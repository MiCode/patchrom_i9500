.class Lcom/android/settings_ex/CryptKeeper$7;
.super Landroid/os/CountDownTimer;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/CryptKeeper;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeper;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 871
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeper$7;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 887
    invoke-static {v4}, Lcom/android/settings_ex/CryptKeeper;->access$202(I)I

    .line 888
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$7;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v3, 0x7f0b003e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 890
    .local v0, status:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$7;->this$0:Lcom/android/settings_ex/CryptKeeper;

    #getter for: Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings_ex/CryptKeeper;->access$400(Lcom/android/settings_ex/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 892
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$7;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v3, 0x7f090a98

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 894
    .local v1, tempStatus:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/settings_ex/CryptKeeper;->access$100()I

    move-result v2

    if-eqz v2, :cond_1

    .line 895
    invoke-static {}, Lcom/android/settings_ex/CryptKeeper;->access$100()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 896
    const v2, 0x7f0908b5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 905
    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 906
    return-void

    .line 898
    :cond_0
    new-array v2, v5, [Ljava/lang/CharSequence;

    invoke-static {}, Lcom/android/settings_ex/CryptKeeper;->access$100()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 902
    :cond_1
    const v2, 0x7f0908b4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 6
    .parameter "millisUntilFinished"

    .prologue
    const/4 v5, 0x0

    .line 875
    const-wide/16 v3, 0x3e8

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 876
    .local v0, secondsCountdown:I
    invoke-static {v0}, Lcom/android/settings_ex/CryptKeeper;->access$202(I)I

    .line 878
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$7;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v4, 0x7f0b003e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 879
    .local v2, tv:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$7;->this$0:Lcom/android/settings_ex/CryptKeeper;

    #getter for: Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings_ex/CryptKeeper;->access$400(Lcom/android/settings_ex/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 880
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$7;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v4, 0x7f09018a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 881
    .local v1, template:Ljava/lang/CharSequence;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 883
    return-void
.end method
