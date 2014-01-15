.class Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;
.super Landroid/os/AsyncTask;
.source "FontListProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/flipfont/FontListProgressActivity;
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
.field private enable:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private privState:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/settings_ex/flipfont/FontListProgressActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/flipfont/FontListProgressActivity;)V
    .locals 1

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListProgressActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;->enable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/flipfont/FontListProgressActivity;Lcom/android/settings_ex/flipfont/FontListProgressActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;-><init>(Lcom/android/settings_ex/flipfont/FontListProgressActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListProgressActivity;

    iget-object v1, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListProgressActivity;

    #getter for: Lcom/android/settings_ex/flipfont/FontListProgressActivity;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/flipfont/FontListProgressActivity;->access$100(Lcom/android/settings_ex/flipfont/FontListProgressActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/flipfont/FontListProgressActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;
    invoke-static {v0, v1}, Lcom/android/settings_ex/flipfont/FontListProgressActivity;->access$202(Lcom/android/settings_ex/flipfont/FontListProgressActivity;Lcom/android/settings_ex/flipfont/FontListAdapter;)Lcom/android/settings_ex/flipfont/FontListAdapter;

    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListProgressActivity;

    #getter for: Lcom/android/settings_ex/flipfont/FontListProgressActivity;->mFontListAdapter:Lcom/android/settings_ex/flipfont/FontListAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/flipfont/FontListProgressActivity;->access$200(Lcom/android/settings_ex/flipfont/FontListProgressActivity;)Lcom/android/settings_ex/flipfont/FontListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/flipfont/FontListAdapter;->loadTypefaces()V

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "unused"

    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 63
    iget-object v1, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListProgressActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 64
    iget-boolean v1, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;->enable:Z

    if-eqz v1, :cond_0

    .line 65
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListProgressActivity;

    const-class v2, Lcom/android/settings_ex/flipfont/FontListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListProgressActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;->enable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 43
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListProgressActivity;

    #getter for: Lcom/android/settings_ex/flipfont/FontListProgressActivity;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/flipfont/FontListProgressActivity;->access$100(Lcom/android/settings_ex/flipfont/FontListProgressActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090988

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    .local v1, sTitle:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListProgressActivity;

    #getter for: Lcom/android/settings_ex/flipfont/FontListProgressActivity;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/flipfont/FontListProgressActivity;->access$100(Lcom/android/settings_ex/flipfont/FontListProgressActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0909a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    .local v0, sMsg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;->this$0:Lcom/android/settings_ex/flipfont/FontListProgressActivity;

    #getter for: Lcom/android/settings_ex/flipfont/FontListProgressActivity;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/flipfont/FontListProgressActivity;->access$100(Lcom/android/settings_ex/flipfont/FontListProgressActivity;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v1, v0, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/flipfont/FontListProgressActivity$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 48
    return-void
.end method
