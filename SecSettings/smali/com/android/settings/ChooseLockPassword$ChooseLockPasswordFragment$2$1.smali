.class Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2$1;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;)V
    .locals 0

    .prologue
    .line 978
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2$1;->this$1:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 981
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2$1;->this$1:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;

    iget-object v1, v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    #getter for: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;
    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$200(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 982
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2$1;->this$1:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;

    iget-object v1, v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    #getter for: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$300(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 983
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2$1;->this$1:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;

    iget-object v1, v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    #getter for: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;
    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$200(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 984
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2$1;->this$1:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;

    iget-object v1, v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v1, v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 985
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2$1;->this$1:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;

    iget-object v1, v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v1, v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 986
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2$1;->this$1:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;

    iget-object v1, v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    #calls: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V
    invoke-static {v1}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$900(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)V

    .line 987
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2$1;->this$1:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;

    iget-object v1, v1, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2$1;->this$1:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;

    iget-object v2, v2, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;

    #getter for: Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->mOrientation:I
    invoke-static {v2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->access$000(Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :goto_0
    return-void

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ChooseLockPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registe::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
