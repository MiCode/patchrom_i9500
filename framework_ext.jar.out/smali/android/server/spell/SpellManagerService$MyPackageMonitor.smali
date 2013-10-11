.class Landroid/server/spell/SpellManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SpellManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/spell/SpellManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/spell/SpellManagerService;


# direct methods
.method constructor <init>(Landroid/server/spell/SpellManagerService;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Landroid/server/spell/SpellManagerService$MyPackageMonitor;->this$0:Landroid/server/spell/SpellManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .locals 2
    .parameter "pkg"

    .prologue
    .line 185
    iget-object v0, p0, Landroid/server/spell/SpellManagerService$MyPackageMonitor;->this$0:Landroid/server/spell/SpellManagerService;

    const-string v1, "onPackageModified"

    #calls: Landroid/server/spell/SpellManagerService;->scheduleUpdateSpellScrollInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/server/spell/SpellManagerService;->access$400(Landroid/server/spell/SpellManagerService;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Landroid/server/spell/SpellManagerService$MyPackageMonitor;->this$0:Landroid/server/spell/SpellManagerService;

    const-string v1, "onSomePackagesChanged"

    #calls: Landroid/server/spell/SpellManagerService;->scheduleUpdateSpellScrollInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/server/spell/SpellManagerService;->access$400(Landroid/server/spell/SpellManagerService;Ljava/lang/String;)V

    .line 181
    return-void
.end method
