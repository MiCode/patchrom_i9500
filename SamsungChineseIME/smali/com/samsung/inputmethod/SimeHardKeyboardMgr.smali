.class public Lcom/samsung/inputmethod/SimeHardKeyboardMgr;
.super Ljava/lang/Object;
.source "SimeHardKeyboardMgr.java"


# static fields
.field public static final BTKEYBOARD_STATE_CONNECTED:I = 0x2

.field public static final BTKEYBOARD_STATE_CONNECTING:I = 0x1

.field public static final BTKEYBOARD_STATE_DISCONNECTED:I = 0x0

.field public static final BTKEYBOARD_STATE_DISCONNECTING:I = 0x3

.field private static final DEBUG:Z = false

.field public static final HWKEYBOARD_CONNECTED:I = 0x9

.field public static final HWKEYBOARD_DISCONNECTED:I = 0x0

.field public static final KEYBOARD_BT:I = 0x2

.field public static final KEYBOARD_DOCK:I = 0x1

.field public static final KEYBOARD_UNDEFINED:I = 0x0

.field public static final KEYBOARD_USB:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SimeHardKeyboardMgr"

.field private static mDocKeyboardConnected:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHWKeyboardConnection()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->mDocKeyboardConnected:Z

    return v0
.end method

.method public static isBTPeripheralConnected(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 50
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 52
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    .line 53
    .local v1, mKeyboard:I
    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setHWKeyboardConnection(Z)V
    .locals 0
    .parameter "connect"

    .prologue
    .line 40
    sput-boolean p0, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->mDocKeyboardConnected:Z

    .line 41
    return-void
.end method

.method public static setHWKeyboardLedState(Z)V
    .locals 5
    .parameter "state"

    .prologue
    .line 64
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_HW_LED_CONTROL:Z

    if-eqz v3, :cond_0

    .line 80
    :goto_0
    return-void

    .line 67
    :cond_0
    const/4 v2, 0x0

    .line 68
    .local v2, ret:I
    const-string v3, "input"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    .line 71
    .local v1, im:Landroid/hardware/input/IInputManager;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/hardware/input/IInputManager;->setLedState(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SimeHardKeyboardMgr"

    const-string v4, "BTKeyboard CapsLock .setLedState() FAIL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
