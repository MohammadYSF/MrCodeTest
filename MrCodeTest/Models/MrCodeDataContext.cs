using Microsoft.EntityFrameworkCore;

namespace MrCodeTest.Models
{
    public class MrCodeDataContext:DbContext
    {
        public MrCodeDataContext(DbContextOptions<MrCodeDataContext> options):base(options)
        {
            
        }
        public virtual DbSet<User> Users{ get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<User>(entity =>
            {
                entity.ToTable("User");
                entity.HasKey(a => a.Id);
                entity.Property(a => a.Id).UseIdentityColumn();
            });
        }
    }
}
