.class Lcom/android/settings_ex/FontSizeListPreference$1;
.super Ljava/lang/Object;
.source "FontSizeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FontSizeListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FontSizeListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FontSizeListPreference;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings_ex/FontSizeListPreference$1;->this$0:Lcom/android/settings_ex/FontSizeListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 98
    const-string v0, "FontSizeListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNegativeButton :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeListPreference$1;->this$0:Lcom/android/settings_ex/FontSizeListPreference;

    #getter for: Lcom/android/settings_ex/FontSizeListPreference;->isWidget:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/settings_ex/FontSizeListPreference;->access$000(Lcom/android/settings_ex/FontSizeListPreference;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeListPreference$1;->this$0:Lcom/android/settings_ex/FontSizeListPreference;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/FontSizeListPreference;->isWidget:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settings_ex/FontSizeListPreference;->access$002(Lcom/android/settings_ex/FontSizeListPreference;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeListPreference$1;->this$0:Lcom/android/settings_ex/FontSizeListPreference;

    #getter for: Lcom/android/settings_ex/FontSizeListPreference;->mFontSize:Lcom/android/settings_ex/DisplaySettings;
    invoke-static {v0}, Lcom/android/settings_ex/FontSizeListPreference;->access$100(Lcom/android/settings_ex/FontSizeListPreference;)Lcom/android/settings_ex/DisplaySettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 103
    :cond_0
    return-void
.end method
