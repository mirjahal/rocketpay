defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when there is a file with given name, returns the sum of numbers" do
      response = Numbers.sum_from_file("numbers")

      assert {:ok, %{result: 37}} == response
    end

    test "when there is no a file with given name, returns an error" do
      response = Numbers.sum_from_file("xablau")

      assert {:error, %{message: "Invalid file!"}} == response
    end
  end
end
