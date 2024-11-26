# autoware_msgs

Before contributing, review [the message guidelines](https://autowarefoundation.github.io/autoware-documentation/main/contributing/coding-guidelines/ros-nodes/message-guidelines/).

## Add as conan packages

```sh
pip install conan2
mkdir ~/.conan2/profiles
touch ~/.conan2/profiles/default
cp profiles/gcc_pf ~/.conan2/profiles/default
conan install .
conan build .
conan create .
```
