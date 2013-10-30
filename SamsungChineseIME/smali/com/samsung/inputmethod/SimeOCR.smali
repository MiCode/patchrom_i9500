.class public Lcom/samsung/inputmethod/SimeOCR;
.super Ljava/lang/Object;
.source "SimeOCR.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_OCR_RETRY_COUNT:I = 0x14

.field private static final MSG_OCR_RECEIVED:I = 0x25

.field private static final TAG:Ljava/lang/String; = "SimeOCR"

.field private static mOcrHandler:Landroid/os/Handler;


# instance fields
.field private isGetOcrString:Z

.field private isSelectedText:Z

.field private mCountOfTriedInputOCR:I

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mIsDisableLoopOfOcr:Z

.field public mStringfromOcr:Ljava/lang/String;

.field private selectedText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/inputmethod/SimeOCR;->mOcrHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 2
    .parameter "ime"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/samsung/inputmethod/SimeOCR;->mStringfromOcr:Ljava/lang/String;

    .line 21
    iput-boolean v0, p0, Lcom/samsung/inputmethod/SimeOCR;->isGetOcrString:Z

    .line 22
    iput-object v1, p0, Lcom/samsung/inputmethod/SimeOCR;->selectedText:Ljava/lang/CharSequence;

    .line 23
    iput-boolean v0, p0, Lcom/samsung/inputmethod/SimeOCR;->isSelectedText:Z

    .line 24
    iput-boolean v0, p0, Lcom/samsung/inputmethod/SimeOCR;->mIsDisableLoopOfOcr:Z

    .line 27
    iput v0, p0, Lcom/samsung/inputmethod/SimeOCR;->mCountOfTriedInputOCR:I

    .line 34
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeOCR;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 35
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeOCR;->initHandler()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/SimeOCR;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/samsung/inputmethod/SimeOCR;->mCountOfTriedInputOCR:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/inputmethod/SimeOCR;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/samsung/inputmethod/SimeOCR;->mCountOfTriedInputOCR:I

    return p1
.end method

.method static synthetic access$008(Lcom/samsung/inputmethod/SimeOCR;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/samsung/inputmethod/SimeOCR;->mCountOfTriedInputOCR:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/inputmethod/SimeOCR;->mCountOfTriedInputOCR:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/SimeOCR;)Lcom/samsung/inputmethod/SamsungIME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeOCR;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/samsung/inputmethod/SimeOCR;->mOcrHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/SimeOCR;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeOCR;->isGetOcrString:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/SimeOCR;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeOCR;->isSelectedText:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/inputmethod/SimeOCR;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/samsung/inputmethod/SimeOCR;->isSelectedText:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/SimeOCR;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeOCR;->selectedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/inputmethod/SimeOCR;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeOCR;->mIsDisableLoopOfOcr:Z

    return v0
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/samsung/inputmethod/SimeOCR$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/SimeOCR$1;-><init>(Lcom/samsung/inputmethod/SimeOCR;)V

    sput-object v0, Lcom/samsung/inputmethod/SimeOCR;->mOcrHandler:Landroid/os/Handler;

    .line 169
    return-void
.end method


# virtual methods
.method public commitOcrText()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeOCR;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 107
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/SimeOCR;->mStringfromOcr:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeOCR;->isGetOcrString()Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 108
    iget-boolean v1, p0, Lcom/samsung/inputmethod/SimeOCR;->isSelectedText:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SimeOCR;->selectedText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SimeOCR;->selectedText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeOCR;->selectedText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeOCR;->mStringfromOcr:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 112
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 114
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SimeOCR;->setGetOcrString(Z)V

    .line 115
    return-void
.end method

.method public handleOcrKey()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 39
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeOCR;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 40
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v3, 0x0

    .line 41
    .local v3, mOCRSIPType:I
    invoke-interface {v0, v6}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/inputmethod/SimeOCR;->selectedText:Ljava/lang/CharSequence;

    .line 42
    iput-boolean v6, p0, Lcom/samsung/inputmethod/SimeOCR;->isSelectedText:Z

    .line 43
    iput-boolean v6, p0, Lcom/samsung/inputmethod/SimeOCR;->mIsDisableLoopOfOcr:Z

    .line 45
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeOCR;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v2

    .line 47
    .local v2, mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    if-eqz v0, :cond_1

    .line 48
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeOCR;->selectedText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 49
    iput-boolean v7, p0, Lcom/samsung/inputmethod/SimeOCR;->isSelectedText:Z

    .line 51
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isTextClass()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 52
    const/4 v3, 0x1

    .line 53
    iput-boolean v7, p0, Lcom/samsung/inputmethod/SimeOCR;->mIsDisableLoopOfOcr:Z

    .line 67
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.sec.android.app.ocr"

    const-string v5, "com.sec.android.app.ocr.OCR"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const/high16 v4, 0x3000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    const-string v4, "OCR_SIP_TYPE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SimeOCR;->setGetOcrString(Z)V

    .line 77
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeOCR;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeOCR;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->hideWindow()V

    .line 80
    :cond_2
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeOCR;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v1}, Lcom/samsung/inputmethod/SamsungIME;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void

    .line 54
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhoneMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 55
    const/4 v3, 0x2

    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isTextClass()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 57
    const/4 v3, 0x3

    goto :goto_0

    .line 60
    :cond_5
    const/4 v3, 0x4

    .line 61
    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getPrivateImeOptionsController()Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->getInputType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 62
    iput-boolean v7, p0, Lcom/samsung/inputmethod/SimeOCR;->mIsDisableLoopOfOcr:Z

    goto :goto_0
.end method

.method public isDisableLoopOfOcr()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeOCR;->mIsDisableLoopOfOcr:Z

    return v0
.end method

.method public isGetOcrString()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeOCR;->isGetOcrString:Z

    return v0
.end method

.method public sendMessage()V
    .locals 4

    .prologue
    const/16 v3, 0x25

    .line 118
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeOCR;->mIsDisableLoopOfOcr:Z

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/samsung/inputmethod/SimeOCR;->mOcrHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/SimeOCR;->mOcrHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setGetOcrString(Z)V
    .locals 0
    .parameter "mGetOctString"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/samsung/inputmethod/SimeOCR;->isGetOcrString:Z

    .line 87
    return-void
.end method

.method public setIsDisableLoopOfOcr(Z)V
    .locals 0
    .parameter "isDisableLoopOfOcr"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/samsung/inputmethod/SimeOCR;->mIsDisableLoopOfOcr:Z

    .line 95
    return-void
.end method

.method public setOcrString(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeOCR;->mStringfromOcr:Ljava/lang/String;

    .line 103
    return-void
.end method
