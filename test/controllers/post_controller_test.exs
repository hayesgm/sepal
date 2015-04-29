defmodule Sepal.PostControllerTest do
  use Sepal.ConnCase
  use Timex

  test "GET /posts" do
    conn = get conn(), "/posts"
    assert conn.resp_body =~ "posts"
  end

  test "POST /posts" do
    params = [
      post: [
        url: "abc",
        title: "simple post",
        summary: "summary",
        content: "some content"
      ]
    ]

    conn = post conn(), "/posts", params

    post = Repo.one(Sepal.Post)

    assert post.url == "abc"
    assert post.title == "simple post"
    assert post.summary == "summary"
    assert post.content == "some content"
  end

end