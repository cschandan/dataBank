import com.damyant.Role
import com.damyant.User
import com.damyant.UserRole

class BootStrap {

    def init = { servletContext ->
        def adminRole =Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
        def userRole =Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
        def adminUser = User.findByUsername('admin') ?: new User(
                username: 'admin',
                password: 'admin',
                enabled: true).save(failOnError: true)

        if (!adminUser.authorities.contains(adminRole)) {
            UserRole.create adminUser, adminRole
        }
        def normalUser = User.findByUsername('user') ?: new User(
                username: 'user',
                password: 'admin',
                enabled: true).save(failOnError: true)

        if (!normalUser.authorities.contains(userRole)) {
            UserRole.create normalUser, userRole
        }
    }
    def destroy = {
    }
}
