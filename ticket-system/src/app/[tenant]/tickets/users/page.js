import { IconUserOff, IconCheck } from "@tabler/icons-react";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";

export default async function UserList( { params } ) {
    
  const supabase = getSupabaseCookiesUtilClient()
  const { data: users, error} = await supabase.rpc('get_tenant_userlist', {
    tenant_id: params.tenant
  })

  return (
  <table>
      <thead>
          <tr>
              <th>Name</th>
              <th>Job</th>   
          </tr>
      </thead>
      <tbody>
      {users.map((user) => (
          <tr key={user.id}>
              <td style={{ color: !user.is_available ? "red" : undefined }}>
                  {user.isAvailable ? <IconCheck /> : <IconUserOff />} {user.full_name}
              </td>
          <td>{user.job_title}</td>
          </tr>
      ))}
      </tbody>
  </table>
);


  }