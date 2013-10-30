.class Lcom/google/android/voiceime/IntentApiTrigger;
.super Ljava/lang/Object;
.source "IntentApiTrigger.java"

# interfaces
.implements Lcom/google/android/voiceime/Trigger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voiceime/IntentApiTrigger$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentApiTrigger"


# instance fields
.field private DEBUG:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mLastRecognitionResult:Ljava/lang/String;

.field private final mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

.field private mToken:Landroid/os/IBinder;

.field private final mUpperCaseChars:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 2
    .parameter "inputMethodService"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->DEBUG:Z

    .line 59
    iput-object p1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 61
    new-instance v0, Lcom/google/android/voiceime/ServiceBridge;

    new-instance v1, Lcom/google/android/voiceime/IntentApiTrigger$1;

    invoke-direct {v1, p0}, Lcom/google/android/voiceime/IntentApiTrigger$1;-><init>(Lcom/google/android/voiceime/IntentApiTrigger;)V

    invoke-direct {v0, v1}, Lcom/google/android/voiceime/ServiceBridge;-><init>(Lcom/google/android/voiceime/IntentApiTrigger$Callback;)V

    iput-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mUpperCaseChars:Ljava/util/Set;

    .line 70
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mUpperCaseChars:Ljava/util/Set;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mUpperCaseChars:Ljava/util/Set;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mUpperCaseChars:Ljava/util/Set;

    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mUpperCaseChars:Ljava/util/Set;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voiceime/IntentApiTrigger;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/voiceime/IntentApiTrigger;->postResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/voiceime/IntentApiTrigger;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/voiceime/IntentApiTrigger;->commitResult()V

    return-void
.end method

.method private commitResult()V
    .locals 7

    .prologue
    .line 124
    iget-object v4, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v3, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;

    .line 129
    .local v3, result:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/google/android/voiceime/IntentApiTrigger;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "IntentApiTrigger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "commitResult, result ----------> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_2
    iget-object v4, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v4}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 132
    .local v0, conn:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_3

    .line 133
    iget-boolean v4, p0, Lcom/google/android/voiceime/IntentApiTrigger;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "IntentApiTrigger"

    const-string v5, "Unable to commit recognition result, as the current input connection is null. Did someone kill the IME?"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_3
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result v4

    if-nez v4, :cond_4

    .line 139
    iget-boolean v4, p0, Lcom/google/android/voiceime/IntentApiTrigger;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "IntentApiTrigger"

    const-string v5, "Unable to commit recognition result, as a batch edit cannot start"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :cond_4
    :try_start_0
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 145
    .local v2, etr:Landroid/view/inputmethod/ExtractedTextRequest;
    const/4 v4, 0x1

    iput v4, v2, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 147
    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 149
    .local v1, et:Landroid/view/inputmethod/ExtractedText;
    if-nez v1, :cond_6

    .line 150
    iget-boolean v4, p0, Lcom/google/android/voiceime/IntentApiTrigger;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "IntentApiTrigger"

    const-string v5, "Unable to commit recognition result, as extracted text is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_5
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 154
    :cond_6
    :try_start_1
    iget-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_8

    .line 156
    iget v4, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v5, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-eq v4, v5, :cond_7

    .line 157
    iget v4, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v5, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-interface {v0, v4, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 160
    :cond_7
    invoke-direct {p0, v1, v3}, Lcom/google/android/voiceime/IntentApiTrigger;->format(Landroid/view/inputmethod/ExtractedText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    :cond_8
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 164
    iget-boolean v4, p0, Lcom/google/android/voiceime/IntentApiTrigger;->DEBUG:Z

    if-eqz v4, :cond_9

    const-string v4, "IntentApiTrigger"

    const-string v5, "Unable to commit recognition result"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :cond_9
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 168
    :cond_a
    const/4 v4, 0x0

    :try_start_2
    iput-object v4, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .end local v1           #et:Landroid/view/inputmethod/ExtractedText;
    .end local v2           #etr:Landroid/view/inputmethod/ExtractedTextRequest;
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    throw v4
.end method

.method private format(Landroid/view/inputmethod/ExtractedText;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "et"
    .parameter "result"

    .prologue
    .line 179
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/lit8 v0, v1, -0x1

    .line 181
    .local v0, pos:I
    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 185
    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mUpperCaseChars:Ljava/util/Set;

    iget-object v2, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 189
    :cond_2
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_3

    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 194
    :cond_3
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget-object v2, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_4

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 198
    :cond_4
    return-object p2
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public static isInstalled(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 5
    .parameter "inputMethodService"

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 87
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private postResult(Ljava/lang/String;)V
    .locals 3
    .parameter "recognitionResult"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/google/android/voiceime/IntentApiTrigger;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 103
    return-void
.end method

.method private scheduleCommit()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/voiceime/IntentApiTrigger$2;

    invoke-direct {v1, p0}, Lcom/google/android/voiceime/IntentApiTrigger$2;-><init>(Lcom/google/android/voiceime/IntentApiTrigger;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method


# virtual methods
.method public onStartInputView()V
    .locals 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IntentApiTrigger"

    const-string v1, "#onStartInputView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/google/android/voiceime/IntentApiTrigger;->scheduleCommit()V

    .line 111
    :cond_1
    return-void
.end method

.method public startVoiceRecognition(Ljava/lang/String;)V
    .locals 2
    .parameter "language"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mToken:Landroid/os/IBinder;

    .line 82
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

    iget-object v1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/voiceime/ServiceBridge;->startVoiceRecognition(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    return-void
.end method
