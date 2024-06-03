cdef class MyClass:
    cdef int value

    def __init__(self, int value):
        self.value = value

    def increment(self):
        self.value += 1

    def get_value(self):
        return self.value

    def show_value(self):
        print (self.value)
    