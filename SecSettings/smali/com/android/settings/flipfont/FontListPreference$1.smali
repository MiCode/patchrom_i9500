.class Lcom/android/settings_ex/flipfont/FontListPreference$1;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/flipfont/FontListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
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
    .line 344
    iput-object p1, p0, Lcom/android/settings_ex/flipfont/FontListPreference$1;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference$1;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference$1;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference$1;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    iget-object v0, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 350
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference$1;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    iput-object v1, v0, Lcom/android/settings_ex/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference$1;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    #setter for: Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;
    invoke-static {v0, v1}, Lcom/android/settings_ex/flipfont/FontListPreference;->access$002(Lcom/android/settings_ex/flipfont/FontListPreference;Lcom/android/settings_ex/flipfont/FontListAdapter;)Lcom/android/settings_ex/flipfont/FontListAdapter;

    .line 353
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference$1;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings_ex/flipfont/FontListPreference;->mBuyButtonClicked:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/flipfont/FontListPreference;->access$102(Lcom/android/settings_ex/flipfont/FontListPreference;Z)Z

    .line 354
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference$1;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->restartLater()V

    .line 355
    return-void
.end method
