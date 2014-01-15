.class Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;
.super Landroid/os/AsyncTask;
.source "FontListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/flipfont/FontListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private privState:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/settings_ex/flipfont/FontListPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/flipfont/FontListPreference;)V
    .locals 1

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/flipfont/FontListPreference;Lcom/android/settings_ex/flipfont/FontListPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;-><init>(Lcom/android/settings_ex/flipfont/FontListPreference;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 376
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    new-instance v1, Lcom/android/settings_ex/flipfont/FontListAdapter;

    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    #getter for: Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/flipfont/FontListPreference;->access$200(Lcom/android/settings_ex/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;
    invoke-static {v0, v1}, Lcom/android/settings_ex/flipfont/FontListPreference;->access$002(Lcom/android/settings_ex/flipfont/FontListPreference;Lcom/android/settings_ex/flipfont/FontListAdapter;)Lcom/android/settings_ex/flipfont/FontListAdapter;

    .line 396
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    #getter for: Lcom/android/settings_ex/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/flipfont/FontListPreference;->access$000(Lcom/android/settings_ex/flipfont/FontListPreference;)Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/flipfont/FontListAdapter;->loadTypefaces()V

    .line 397
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 376
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "unused"

    .prologue
    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 405
    iget-object v1, p0, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    iget-object v2, v2, Lcom/android/settings_ex/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/flipfont/FontListPreference;->showDialog(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/settings_ex/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 409
    const-string v1, "FlipFont"

    const-string v2, "dismiss/show ListLoad() - catch (Exception ex)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 383
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    iget-object v2, v2, Lcom/android/settings_ex/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;->privState:Landroid/os/Bundle;

    .line 385
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    #getter for: Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/flipfont/FontListPreference;->access$200(Lcom/android/settings_ex/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090988

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 386
    .local v1, sTitle:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    #getter for: Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/flipfont/FontListPreference;->access$200(Lcom/android/settings_ex/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0909a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 389
    .local v0, sMsg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListPreference;

    #getter for: Lcom/android/settings_ex/flipfont/FontListPreference;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/flipfont/FontListPreference;->access$200(Lcom/android/settings_ex/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v1, v0, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/flipfont/FontListPreference$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 390
    return-void
.end method
