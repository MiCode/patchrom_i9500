.class Lcom/android/settings_ex/CryptKeeper$DecryptTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/CryptKeeper;Lcom/android/settings_ex/CryptKeeper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .parameter "params"

    .prologue
    .line 164
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    #calls: Lcom/android/settings_ex/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/android/settings_ex/CryptKeeper;->access$000(Lcom/android/settings_ex/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 166
    .local v1, service:Landroid/os/storage/IMountService;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 169
    :goto_0
    return-object v2

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CryptKeeper"

    const-string v3, "Error while decrypting..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 9
    .parameter "failedAttempts"

    .prologue
    const/16 v6, 0x1e

    const/4 v8, 0x1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/settings_ex/CryptKeeper;->access$102(I)I

    .line 176
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_0

    .line 181
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const-class v6, Lcom/android/settings_ex/CryptKeeper$FadeToBlack;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 183
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 202
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v5, v6, :cond_1

    .line 186
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    rem-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_2

    .line 188
    invoke-static {v6}, Lcom/android/settings_ex/CryptKeeper;->access$202(I)I

    .line 189
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-static {}, Lcom/android/settings_ex/CryptKeeper;->access$200()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/CryptKeeper;->setLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 190
    .local v0, deadline:J
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    #calls: Lcom/android/settings_ex/CryptKeeper;->handleAttemptLockout(J)V
    invoke-static {v5, v0, v1}, Lcom/android/settings_ex/CryptKeeper;->access$300(Lcom/android/settings_ex/CryptKeeper;J)V

    goto :goto_0

    .line 192
    .end local v0           #deadline:J
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v6, 0x7f0b003e

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 193
    .local v3, status:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v6, 0x7f090a98

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 194
    .local v4, tempStatus:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x14

    if-ge v5, v6, :cond_3

    .line 195
    const v5, 0x7f0908b5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 200
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    #getter for: Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/settings_ex/CryptKeeper;->access$400(Lcom/android/settings_ex/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 197
    :cond_3
    new-array v5, v8, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/settings_ex/CryptKeeper;->access$100()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
