.class Lcom/android/settings_ex/wifi/WpsDialog$5;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WpsDialog;->updateDialog(Lcom/android/settings_ex/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WpsDialog;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$state:Lcom/android/settings_ex/wifi/WpsDialog$DialogState;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WpsDialog;Lcom/android/settings_ex/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WpsDialog$5;->this$0:Lcom/android/settings_ex/wifi/WpsDialog;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/WpsDialog$5;->val$state:Lcom/android/settings_ex/wifi/WpsDialog$DialogState;

    iput-object p3, p0, Lcom/android/settings_ex/wifi/WpsDialog$5;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 264
    sget-object v0, Lcom/android/settings_ex/wifi/WpsDialog$6;->$SwitchMap$com$android$settings$wifi$WpsDialog$DialogState:[I

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog$5;->val$state:Lcom/android/settings_ex/wifi/WpsDialog$DialogState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog$5;->this$0:Lcom/android/settings_ex/wifi/WpsDialog;

    #getter for: Lcom/android/settings_ex/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WpsDialog;->access$700(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog$5;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    return-void

    .line 266
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog$5;->this$0:Lcom/android/settings_ex/wifi/WpsDialog;

    #getter for: Lcom/android/settings_ex/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WpsDialog;->access$400(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog$5;->this$0:Lcom/android/settings_ex/wifi/WpsDialog;

    #getter for: Lcom/android/settings_ex/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WpsDialog;->access$600(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog$5;->this$0:Lcom/android/settings_ex/wifi/WpsDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f090699

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog$5;->this$0:Lcom/android/settings_ex/wifi/WpsDialog;

    #getter for: Lcom/android/settings_ex/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WpsDialog;->access$400(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog$5;->this$0:Lcom/android/settings_ex/wifi/WpsDialog;

    #getter for: Lcom/android/settings_ex/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WpsDialog;->access$600(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
