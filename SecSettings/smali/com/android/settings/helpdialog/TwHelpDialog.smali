.class public Lcom/android/settings_ex/helpdialog/TwHelpDialog;
.super Landroid/app/Dialog;
.source "TwHelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/helpdialog/TwHelpDialog$1;,
        Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;
    }
.end annotation


# instance fields
.field private fPunchEvent:Z

.field private mShowWrongInputToast:Z

.field private mTouchTransparencyMode:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

.field private mWrongInputToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    const v0, 0x7f100039

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    sget-object v0, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    iput-object v0, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    .line 39
    iput-boolean v3, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    .line 40
    iput-boolean v2, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 56
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 59
    sget-object v0, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    iput-object v0, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f091026

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    .line 64
    iput-boolean v3, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    .line 65
    iput-boolean v2, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings_ex/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings_ex/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 46
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getShowWrongInputToast()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    return v0
.end method

.method public getTouchTransparencyMode()Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const v6, 0x7f0b017b

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 89
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    .line 90
    iput-boolean v5, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 95
    :cond_0
    sget-object v2, Lcom/android/settings_ex/helpdialog/TwHelpDialog$1;->$SwitchMap$com$android$settings$helpdialog$TwHelpDialog$TouchMode:[I

    iget-object v3, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 142
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 145
    :cond_1
    :goto_0
    if-eq v0, v5, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    if-eq v0, v7, :cond_3

    .line 151
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->fPunchEvent:Z

    .line 153
    :cond_3
    return v4

    .line 97
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->fPunchEvent:Z

    if-eqz v2, :cond_5

    .line 98
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 99
    if-nez v0, :cond_4

    .line 101
    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 102
    .local v1, containerView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 105
    .end local v1           #containerView:Landroid/view/View;
    :cond_4
    if-ne v0, v5, :cond_1

    .line 106
    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 107
    .restart local v1       #containerView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 112
    .end local v1           #containerView:Landroid/view/View;
    :cond_5
    iget-boolean v2, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 119
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->fPunchEvent:Z

    if-eqz v2, :cond_7

    if-eq v0, v7, :cond_7

    .line 120
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 121
    if-nez v0, :cond_6

    .line 123
    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 124
    .restart local v1       #containerView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 127
    .end local v1           #containerView:Landroid/view/View;
    :cond_6
    if-ne v0, v5, :cond_1

    .line 128
    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 129
    .restart local v1       #containerView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 134
    .end local v1           #containerView:Landroid/view/View;
    :cond_7
    iget-boolean v2, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v2, :cond_1

    if-eq v0, v7, :cond_1

    .line 135
    iget-object v2, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setShowWrongInputToast(Z)V
    .locals 0
    .parameter "pShowWrongInputToast"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->mShowWrongInputToast:Z

    .line 78
    return-void
.end method

.method public setTouchTransparencyMode(Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;)V
    .locals 0
    .parameter "touchTransparencyMode"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    .line 70
    return-void
.end method
