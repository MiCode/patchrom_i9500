.class public Lcom/samsung/inputmethod/SimIntentProcessor;
.super Ljava/lang/Object;
.source "SimIntentProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_CONTEXT_MENU:Ljava/lang/String; = "android.widget.TextView.onCreateContextMenu"

.field private static final ACTION_IME_HIDE:Ljava/lang/String; = "samsungimehideview"

.field public static final ACTION_IME_INTERNAL_MESSAGE:Ljava/lang/String; = "com.samsung.inputmethod.internal.message"

.field private static final ACTION_IME_SELECT:Ljava/lang/String; = "java.com.android.server.InputMethodService.hideInputMethodMenu"

.field private static final ACTION_NEW_INCOMING_CALL:Ljava/lang/String; = "com.android.phone.ACTION_NEW_INCOMING_CALL"

.field public static final ACTION_REQUEST_LANGUAGE_INFO:Ljava/lang/String; = "com.samsung.inputmethod.RequestLanguageInfo"

.field private static final ACTION_SHOW_CLIPBOARD:Ljava/lang/String; = "ShowClipboard"

.field private static final ACTION_SHOW_CLIPBOARD_DIALOG:Ljava/lang/String; = "ShowClipboardDialog"

.field private static final DEBUG:Z = false

.field public static final DEFAULT_LANGUAGE:Ljava/lang/String; = "defaultLanguage"

.field public static final SAMSUNGIME_INTENT_MSG:Ljava/lang/String; = "SamsungIME_intent_msg"

.field public static final SELECTED_LANGAUGE_LIST:Ljava/lang/String; = "selectedLanguageList"

.field private static final TAG:Ljava/lang/String; = "SimIntentProcesser"


# instance fields
.field public final ACTION_BTKEYBOARD_STATE_CHANGED:Ljava/lang/String;

.field public final ACTION_NOTIFY_SPLIT_WINDOWS:Ljava/lang/String;

.field public final ACTION_OCR_SIP_TEXT:Ljava/lang/String;

.field public final BTKEYBOARD_EXTRA_STATE:Ljava/lang/String;

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mIntentReceiver:Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 1
    .parameter "ime"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    iput-object v0, p0, Lcom/samsung/inputmethod/SimIntentProcessor;->ACTION_BTKEYBOARD_STATE_CHANGED:Ljava/lang/String;

    .line 46
    const-string v0, "android.bluetooth.profile.extra.STATE"

    iput-object v0, p0, Lcom/samsung/inputmethod/SimIntentProcessor;->BTKEYBOARD_EXTRA_STATE:Ljava/lang/String;

    .line 48
    const-string v0, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    iput-object v0, p0, Lcom/samsung/inputmethod/SimIntentProcessor;->ACTION_NOTIFY_SPLIT_WINDOWS:Ljava/lang/String;

    .line 50
    const-string v0, "com.sec.android.app.ocr.OCR_SIP_TEXT"

    iput-object v0, p0, Lcom/samsung/inputmethod/SimIntentProcessor;->ACTION_OCR_SIP_TEXT:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 59
    new-instance v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;-><init>(Lcom/samsung/inputmethod/SimIntentProcessor;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SimIntentProcessor;->mIntentReceiver:Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    return-object v0
.end method


# virtual methods
.method public registerIntent()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "ShowClipboard"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v1, "ShowClipboardDialog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v1, "android.widget.TextView.onCreateContextMenu"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v1, "samsungimehideview"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v1, "java.com.android.server.InputMethodService.hideInputMethodMenu"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v1, "com.android.phone.ACTION_NEW_INCOMING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v1, "com.samsung.inputmethod.RequestLanguageInfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "com.sec.android.app.ocr.OCR_SIP_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "com.samsung.inputmethod.internal.message"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v2, p0, Lcom/samsung/inputmethod/SimIntentProcessor;->mIntentReceiver:Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/inputmethod/SamsungIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method public unregisterIntent()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/SimIntentProcessor;->mIntentReceiver:Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    return-void
.end method
