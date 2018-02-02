# -*- coding:utf-8 -*-
class Publisher:
    def __init__(self):
        pass

    def register(self):
        pass

    def unregister(self):
        pass

    def notify_all(self):
        pass


class TechForum(Publisher):
    def __init__(self):
        self._list_of_users = []
        self.post_name = None

    def register(self, user_obj):
        if user_obj not in self._list_of_users:
            self._list_of_users.append(user_obj)

    def unregister(self, user_obj):
        self._list_of_users.remove(user_obj)

    def notify_all(self):
        for user in self._list_of_users:
            user.notify(self.post_name)

    def write_new_post(self, post_name):
        self.post_name = post_name
        self.notify_all()


class Subscribe:
    def __init__(self):
        pass

    def notify(self):
        pass


class User1(Subscribe):
    def notify(self):
        print("this is User 1")


class User2(Subscribe):
    def notify(self):
        print("this is User 2")
