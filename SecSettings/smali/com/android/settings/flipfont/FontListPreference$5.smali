.class Lcom/android/settings_ex/flipfont/FontListPreference$5;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/flipfont/FontListPreference;->onClick(Landroid/content/DialogInterface;I)V
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
    .line 732
    iput-object p1, p0, Lcom/android/settings_ex/flipfont/FontListPreference$5;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference$5;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/flipfont/FontListPreference;->mSelectDialogIsActive:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/flipfont/FontListPreference;->access$402(Lcom/android/settings_ex/flipfont/FontListPreference;Z)Z

    .line 735
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference$5;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->savePreferences()V

    .line 736
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference$5;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->onCancelButtonPressed()V

    .line 737
    return-void
.end method
