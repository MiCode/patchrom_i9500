.class Lcom/android/settings_ex/flipfont/FontListActivity$7;
.super Ljava/lang/Object;
.source "FontListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/flipfont/FontListActivity;->badFontDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/flipfont/FontListActivity;

.field final synthetic val$deletePackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/flipfont/FontListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/settings_ex/flipfont/FontListActivity$7;->this$0:Lcom/android/settings_ex/flipfont/FontListActivity;

    iput-object p2, p0, Lcom/android/settings_ex/flipfont/FontListActivity$7;->val$deletePackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/flipfont/FontListActivity$7;->val$deletePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 658
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x3400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 662
    .local v1, uninstallIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListActivity$7;->this$0:Lcom/android/settings_ex/flipfont/FontListActivity;

    #getter for: Lcom/android/settings_ex/flipfont/FontListActivity;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/flipfont/FontListActivity;->access$100(Lcom/android/settings_ex/flipfont/FontListActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 663
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListActivity$7;->this$0:Lcom/android/settings_ex/flipfont/FontListActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 664
    return-void
.end method
