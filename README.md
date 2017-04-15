## CMSLESS

![Logo](https://content.screencast.com/users/a.stegno/folders/Jing/media/9afa4492-43c9-4f26-bd4f-d70f2a86f77c/00000418.png)

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