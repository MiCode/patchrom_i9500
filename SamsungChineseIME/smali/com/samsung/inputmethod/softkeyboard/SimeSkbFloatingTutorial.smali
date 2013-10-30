.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;
.super Ljava/lang/Object;
.source "SimeSkbFloatingTutorial.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final SHOW_TUTORIAL_DIALOG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SimeSkbFloatingTutorial"

.field private static mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;


# instance fields
.field private mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mImeService:Lcom/samsung/inputmethod/SamsungIME;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mShowTutorial:Z

.field private mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

.field private mTutorialDialog:Landroid/app/AlertDialog;

.field mTutorialHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mShowTutorial:Z

    .line 224
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$4;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$4;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mTutorialHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;)Lcom/samsung/inputmethod/comm/SimeSoundManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mTutorialDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;)Lcom/samsung/inputmethod/SamsungIME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->showTutorialDialog()V

    return-void
.end method

.method private bNeedShowTutorial()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mShowTutorial:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getShowToturial()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSingleKeypadType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    invoke-direct {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    .line 63
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    return-object v0
.end method

.method private showTutorialDialog()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 93
    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->isKeyGuardScreen()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 222
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v9, 0x7f0b005d

    new-instance v10, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$1;

    invoke-direct {v10, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$1;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030023

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 110
    .local v2, dialogView:Landroid/view/View;
    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-static {v9}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    .line 113
    const v9, 0x7f0c0084

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 117
    .local v6, moveKeyboard:Landroid/widget/ImageView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    .line 127
    .local v5, moveBoardAnimation:Landroid/graphics/drawable/AnimationDrawable;
    new-instance v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$2;

    invoke-direct {v9, p0, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$2;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 135
    const v9, 0x7f0c0083

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 137
    .local v3, keytypeContents:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 138
    .local v7, tPaint:Landroid/text/TextPaint;
    invoke-virtual {v7, v12}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 146
    const v9, 0x7f0c0085

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 149
    .local v1, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 150
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/samsung/inputmethod/setting/SimeSetting;->setShowToturial(Z)V

    .line 154
    new-instance v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$3;

    invoke-direct {v9, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$3;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;)V

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 192
    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 193
    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3f19999a

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v2, v9}, Landroid/view/View;->setMinimumWidth(I)V

    .line 200
    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 202
    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const v10, 0x7f0b0051

    invoke-virtual {v9, v10}, Lcom/samsung/inputmethod/SamsungIME;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 204
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mTutorialDialog:Landroid/app/AlertDialog;

    .line 205
    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 206
    .local v8, window:Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 210
    .local v4, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    iput-object v9, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 212
    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 214
    const/16 v9, 0x7dc

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 219
    :goto_2
    invoke-virtual {v8, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 220
    const/high16 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 221
    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 196
    .end local v4           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #window:Landroid/view/Window;
    :cond_1
    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3f4ccccd

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v2, v9}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_1

    .line 216
    .restart local v4       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v8       #window:Landroid/view/Window;
    :cond_2
    const/16 v9, 0x3eb

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_2
.end method


# virtual methods
.method public checkTutorial()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->bNeedShowTutorial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mTutorialHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mTutorialHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mTutorialHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mShowTutorial:Z

    .line 85
    :cond_0
    return-void
.end method

.method public dismissTutorialDialog()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mTutorialDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mTutorialHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mTutorialHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    :cond_1
    return-void
.end method

.method public resetVariables()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mShowTutorial:Z

    .line 251
    return-void
.end method

.method public setParams(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/SimeInputModeSwitcher;Lcom/samsung/inputmethod/comm/SimeEnvironment;)V
    .locals 0
    .parameter "ime"
    .parameter "inputModeSwitcher"
    .parameter "env"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    .line 68
    iput-object p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 69
    iput-object p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 70
    return-void
.end method
