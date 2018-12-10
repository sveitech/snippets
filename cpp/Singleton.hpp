
#include <memory>

/**
 * Make any class a singleton by wrapping it in the singleton class.
 *
 * For example, having a class Foo, simply access it with:
 *
 *     Singleton<Foo>::Instance()
 *
 * or assign it:
 *
 *    Singleton<Foo>::Instance(new Foo());
 */
template<class T>
class Singleton
{
public:
    static T& Instance()
    {
        return *(m_instance.get());
    }

    void Instance(T* instance)
    {
        m_instance.reset(instance);
    }

private:
    static std::shared_ptr<T> m_instance;
};

template<class T>
std::shared_ptr<T> Singleton<T>::m_instance;