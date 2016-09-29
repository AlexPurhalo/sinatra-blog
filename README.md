<h3>Application Setup:</h3>
<ul>
    <li>$ git clone https://github.com/AlexPurhalo/sinatra-blog.git</li>
    <li>$ cd sinatra-blog</li>
    <li>$ rvm install 1.9.3</li>
    <li>$ rvm use 1.9.3</li>
    <li>$ bundler install</li>
</ul>
<h3>Progress:</h3>
<h4>Post Edit ability</h4>
<ul>
    <li>Find single post and go to it's post edit link</li>
    <li>Change data about this post and update it</li>
</ul>
<h4># 3, validation</h4>
<ul>
    <li>try to upload empty data creating a post</li>
    <li>as output you should get message says that this impossible do with empty data</li>
</ul>
<h4># 2</h4>
<ul>
    <li>$ ruby app.rb</li>
    <li>visit http://0.0.0.0:4567 in browser</li>
    <li>
        <ol>
            <li>checkout list with posts</li>
            <li>follow by one of the post's link, linked to title</li>
            <li>checkout page of this post with it's title and description</li>
            <li>checkout link with path to with form for post creating</li>
            <li>create a new post and ensure that you was redirected too it's post page</li>
        </ol>
    </li>
</ul>
<h4># 1</h4>
<ul>
    <li>$ tux</li>
    <li>>> Post.create(title: "some title", body: "some text")</li>
    <li>>> exit</li>
</ul>