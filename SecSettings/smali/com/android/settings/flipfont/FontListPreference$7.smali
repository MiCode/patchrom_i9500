.class Lcom/android/settings_ex/flipfont/FontListPreference$7;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/flipfont/FontListPreference;->selectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/flipfont/FontListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/flipfont/FontListPreference;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lcom/android/settings_ex/flipfont/FontListPreference$7;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference$7;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/flipfont/FontListPreference;->mSelectDialogIsActive:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/flipfont/FontListPreference;->access$402(Lcom/android/settings_ex/flipfont/FontListPreference;Z)Z

    .line 798
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference$7;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->savePreferences()V

    .line 799
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference$7;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->onOkButtonPressed()Z

    .line 800
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 801
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference$7;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->dismissApp()V

    .line 802
    return-void
.end method
