![Logo](https://content.screencast.com/users/a.stegno/folders/Jing/media/a92ac5f5-80ab-4c26-9d7b-db8f66b2aff0/00000419.png)

# Manage your files as GitHub gists and load it to your website. 



```Javascript

var config = {
  github: {
    username: "YOUR_GIRHUB_LOGIN",
    password: "YOUR_GIRHUB_PASSWORD"
  },
  gists: [
    {
      id: 'e60da16a8a16bfa47c1481e2f1a016e8',
      files: ["keybase.md > html"]
    }, {
      id: 'a0500709967a32f5daaa1c3258f8a486',
      files: ["CheckRole.php"]
    }
  ]
};

cmsless(config).load(function(err, result){
  console.log(result);
});

```