import { IconUserOff, IconCheck } from "@tabler/icons-react";

const users = [
    {
      name: "Alice Ling",
      job: "Software Engineer",
      isAvailable: false,
    },
    {
      name: "Bob Smith",
      job: "Designer",
      isAvailable: true,
    },
    {
      name: "Charlie Johnson",
      job: "Manager",
      isAvailable: false,
    },
    {
      name: "Diana Brown",
      job: "Software Engineer",
      isAvailable: true,
    },
    {
      name: "Ethan Davis",
      job: "Designer",
      isAvailable: false,
    },
    {
      name: "Fiona Wilson",
      job: "Manager",
      isAvailable: true,
    },
  ];

  export default function UserList() {
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
            <tr key={user.name}>
               <td style={{ color: !user.isAvailable ? "red" : undefined }}>
                    {user.isAvailable ? <IconCheck /> : <IconUserOff />} {user.name}
                </td>
            <td>{user.job}</td>
            </tr>
        ))}
        </tbody>
    </table>
);


  }