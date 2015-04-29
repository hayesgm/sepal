defmodule Sepal.PageControllerTest do
  use Sepal.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert conn.resp_body =~ "Geoff's Blog"
  end
end
