.class public Lcom/android/settings_ex/wfd/WfdPickerDialog;
.super Landroid/app/Activity;
.source "WfdPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final SHOW_MAIN_DLG:Ljava/lang/String; = "show_main_dialog"

.field public static final SHOW_WELCOME_DLG:Ljava/lang/String; = "show_welcome_dialog"

.field private static final TAG:Ljava/lang/String; = "WfdPickerDialog"

.field public static final WRITE_IF_SUCCESS:Ljava/lang/String; = "tag_write_if_success"

.field private static mButtonSoundPool:Landroid/media/SoundPool;

.field private static mConfirmSoundID:I


# instance fields
.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonOK:Landroid/widget/Button;

.field private mButtonStop:Landroid/widget/Button;

.field mFragmentLayout:Landroid/widget/LinearLayout;

.field private mMasterStreamVolume:I

.field private mRingerMode:I

.field private mShowMainDlg:Z

.field private mShowWelcomeDlg:Z

.field mWelcomeLayout:Landroid/widget/LinearLayout;

.field mWfdPickerFragment:Lcom/android/settings_ex/wfd/WfdPickerActivity;

.field private mWriteIfSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, -0x1

    sput v0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mConfirmSoundID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mShowMainDlg:Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    return-void
.end method

.method private connWithoutMainDlg()V
    .locals 8

    .prologue
    const/high16 v2, 0x3f80

    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b03f0

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    .line 163
    const/16 v7, 0xb

    .line 164
    .local v7, DIALOG_AUTO_CONNECT:I
    iget v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mMasterStreamVolume:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mRingerMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 165
    :cond_0
    const-string v0, "WfdPickerDialog"

    const-string v1, "Silent mode or volume is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    :goto_0
    const v0, 0x7f0400ac

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setWfdEnabled()V

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setAutoConnStarted()V

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->showDialogp(I)V

    .line 175
    return-void

    .line 167
    :cond_2
    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 168
    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mConfirmSoundID:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private initWfdPickerDialog()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b03f0

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setWfdEnabled()V

    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWelcomeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonOK:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mFragmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    return-void
.end method

.method private isWfdConnected()Z
    .locals 3

    .prologue
    .line 250
    const-string v1, "wfd"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    .line 252
    .local v0, wfdManager:Lcom/samsung/wfd/WfdManager;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 262
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 258
    :pswitch_0
    const-string v1, "WfdPickerDialog"

    const-string v2, "isWfdConnected >> true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v1, 0x1

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancelConnect()V
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mShowMainDlg:Z

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 213
    :cond_0
    return-void
.end method

.method changeToScan()V
    .locals 4

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090417

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, mScanString:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0906da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, mStopString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_0
    return-void
.end method

.method changeToStop()V
    .locals 4

    .prologue
    .line 201
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090417

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, mScanString:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0906da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, mStopString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v2}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->finishWfdPickerDialog()V

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090417

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, mScanString:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0906da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, mStopString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->stopScanningWfdPickerDialog(Z)V

    .line 131
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWfdPickerFragment:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v2}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->startScanningWfdPickerDialog()V

    .line 136
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 140
    .end local v0           #mScanString:Ljava/lang/String;
    .end local v1           #mStopString:Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerDialog;->connWithoutMainDlg()V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b03f5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setDefaultKeyMode(I)V

    .line 55
    const v3, 0x7f040153

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tag_write_if_success"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tag_write_if_success"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_main_dialog"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_main_dialog"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mShowMainDlg:Z

    .line 68
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_welcome_dialog"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_welcome_dialog"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    .line 73
    :cond_2
    const v3, 0x7f090443

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 75
    const v3, 0x7f0b03f5

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonCancel:Landroid/widget/Button;

    .line 76
    const v3, 0x7f0b03f6

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    .line 77
    const v3, 0x7f0b03f7

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonOK:Landroid/widget/Button;

    .line 79
    const v3, 0x7f0b03f1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWelcomeLayout:Landroid/widget/LinearLayout;

    .line 80
    const v3, 0x7f0b03ee

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mFragmentLayout:Landroid/widget/LinearLayout;

    .line 83
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonOK:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget-object v3, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    if-nez v3, :cond_3

    .line 88
    new-instance v3, Landroid/media/SoundPool;

    const/4 v4, 0x4

    const/4 v5, 0x7

    invoke-direct {v3, v4, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v3, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    .line 90
    :cond_3
    sget-object v3, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mButtonSoundPool:Landroid/media/SoundPool;

    const/high16 v4, 0x7f08

    invoke-virtual {v3, p0, v4, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    sput v3, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mConfirmSoundID:I

    .line 93
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 94
    .local v2, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mRingerMode:I

    .line 95
    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mMasterStreamVolume:I

    .line 97
    const-string v3, "WfdPickerDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showMainDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mShowMainDlg:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v3, "WfdPickerDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WriteIfSuccess : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v3, "WfdPickerDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showWelcomeDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    if-eqz v3, :cond_4

    .line 101
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerDialog;->initWfdPickerDialog()V

    .line 112
    :goto_0
    return-void

    .line 102
    :cond_4
    iget-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mShowMainDlg:Z

    if-nez v3, :cond_5

    .line 103
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerDialog;->connWithoutMainDlg()V

    goto :goto_0

    .line 104
    :cond_5
    iget-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mShowWelcomeDlg:Z

    if-nez v3, :cond_6

    .line 105
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerDialog;->initWfdPickerDialog()V

    goto :goto_0

    .line 108
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WIFI_DISPLAY_ENABLED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, actionIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 237
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerDialog;->isWfdConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    if-eqz v1, :cond_1

    .line 238
    const-string v1, "WfdPickerDialog"

    const-string v2, "going to ACTION_WRITE_TAG"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.WRITE_NFC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, intentToPicker:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "called_by_nfc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "called_by_nfc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const-string v1, "called_by_nfc"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 244
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 247
    .end local v0           #intentToPicker:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 152
    .local v0, handled:Z
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const/4 v0, 0x1

    .line 156
    .end local v0           #handled:Z
    :cond_0
    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 218
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 224
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerDialog;->mWriteIfSuccess:Z

    if-nez v0, :cond_0

    .line 227
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 231
    :cond_0
    return-void
.end method
