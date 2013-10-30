.class public Lcom/samsung/inputmethod/touchmodal/TouchModalManager;
.super Ljava/lang/Thread;
.source "TouchModalManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DUMP_GRID:I = 0x1

.field static final INIT_GRID:I = 0x0

.field private static final KEYBOARD_HEIGHT:Ljava/lang/String; = "KeyboardHeight"

.field private static final KEYBOARD_LANGUAGE:Ljava/lang/String; = "KeyboardLanguage"

.field private static final KEYBOARD_MODE:Ljava/lang/String; = "KeyboardMode"

.field private static final KEYBOARD_NKEYS:Ljava/lang/String; = "keyboardnkeys"

.field private static final KEYBOARD_ORIENT:Ljava/lang/String; = "orientation"

.field private static final KEYBOARD_WIDTH:Ljava/lang/String; = "KeyboardWidth"

.field private static final RESET_GRID:I = 0x4

.field private static final RESTORE_GRID:I = 0x3

.field private static final TAG:Ljava/lang/String; = null

.field private static final UPDATE_GRID:I = 0x2

.field private static final WINDOW_WIDTH:Ljava/lang/String; = "WindowWidth"

.field private static mTouchModalManager:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;


# instance fields
.field public final data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

.field private grid_lang:Ljava/lang/String;

.field private grid_mode:I

.field private grid_nKeys:I

.field private isGridInvalidated:Z

.field private isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

.field public key_horizontal_gap:I

.field public key_vertical_gap:I

.field mHandler:Landroid/os/Handler;

.field private mPrevTouchX:I

.field private mPrevTouchY:I

.field public mSoftKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mSoftKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 69
    iput-boolean v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridInvalidated:Z

    .line 75
    iput v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchX:I

    iput v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchY:I

    .line 81
    new-instance v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    invoke-direct {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    .line 85
    iput v2, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_mode:I

    iput v2, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_nKeys:I

    .line 87
    const-string v0, "GRID_LANG"

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_lang:Ljava/lang/String;

    .line 91
    iput v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->key_horizontal_gap:I

    .line 93
    iput v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->key_vertical_gap:I

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    invoke-virtual {p0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->start()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_mode:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_mode:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_lang:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_lang:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_nKeys:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->grid_nKeys:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridInvalidated:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridInvalidated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/inputmethod/touchmodal/TouchModalManager;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mTouchModalManager:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    invoke-direct {v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mTouchModalManager:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    .line 117
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mTouchModalManager:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    return-object v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "Object should not be cloned."

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/lang/String;IZIII)V
    .locals 3
    .parameter "language"
    .parameter "mode"
    .parameter "isLandscape"
    .parameter "width"
    .parameter "height"
    .parameter "nKeys"

    .prologue
    .line 568
    iget-object v2, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 570
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 572
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 574
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 576
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "KeyboardLanguage"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v2, "KeyboardMode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 580
    const-string v2, "KeyboardWidth"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 582
    const-string v2, "KeyboardHeight"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 584
    const-string v2, "orientation"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 586
    const-string v2, "keyboardnkeys"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 588
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 590
    iget-object v2, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 592
    return-void
.end method

.method public getKeyIndex(IIZ[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)I
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "upEvent"
    .parameter "softkeys"

    .prologue
    const/16 v4, 0x43

    const/4 v3, -0x1

    .line 326
    const/4 v0, -0x1

    .line 328
    .local v0, primaryIndex:I
    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v1, v1, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    .line 330
    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v0

    .line 334
    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_0

    array-length v1, p4

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    if-ne v1, v4, :cond_0

    if-eqz p3, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchX:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchY:I

    if-lez v1, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->restore()V

    .line 339
    :cond_0
    if-eq v0, v3, :cond_1

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 343
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/4 v2, -0x3

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, -0x75

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, 0x38

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, -0xc

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    if-eq v1, v4, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    if-eq v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/4 v2, -0x6

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, 0x4d

    if-eq v1, v2, :cond_1

    .line 380
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->update(III)V

    .line 386
    :cond_1
    return v0
.end method

.method public gridInitStart(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;ILjava/lang/String;IIIZI)V
    .locals 3
    .parameter "keyboard"
    .parameter "width"
    .parameter "language"
    .parameter "mode"
    .parameter "keyboardWidth"
    .parameter "keyboardHeight"
    .parameter "currentOrientation"
    .parameter "nKeys"

    .prologue
    .line 412
    iget-object v2, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 414
    iget-object v2, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v2, v2, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 416
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 418
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 420
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 422
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 424
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "WindowWidth"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 426
    const-string v2, "KeyboardLanguage"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v2, "KeyboardMode"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 430
    const-string v2, "KeyboardWidth"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 432
    const-string v2, "KeyboardHeight"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    const-string v2, "orientation"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 436
    const-string v2, "keyboardnkeys"

    invoke-virtual {v0, v2, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 438
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 440
    iget-object v2, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 442
    return-void
.end method

.method public resetGrid()V
    .locals 4

    .prologue
    .line 606
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 610
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 612
    return-void
.end method

.method public restore()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 550
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    iget v3, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchX:I

    iget v4, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchY:I

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 554
    iput v5, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchX:I

    .line 556
    iput v5, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchY:I

    .line 558
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 137
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->setPriority(I)V

    .line 139
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 141
    new-instance v0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager$1;-><init>(Lcom/samsung/inputmethod/touchmodal/TouchModalManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    .line 308
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 310
    return-void
.end method

.method public update(III)V
    .locals 4
    .parameter "currentIndex"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v1, v2, p1, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 540
    iput p2, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchX:I

    .line 542
    iput p3, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->mPrevTouchY:I

    .line 544
    return-void
.end method

.method public updateGrid(III)V
    .locals 2
    .parameter "currentIndex"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 476
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getQwertyKeyHGap()I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->key_horizontal_gap:I

    .line 478
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getQwertyKeyVGap()I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->key_vertical_gap:I

    .line 482
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    if-nez v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;->x:I

    if-lt v0, p2, :cond_3

    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    iget v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->key_horizontal_gap:I

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_3

    .line 490
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;->y:I

    if-gt v0, p3, :cond_2

    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    iget v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->key_vertical_gap:I

    add-int/2addr v0, v1

    if-ge p3, v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->increaseBL(III)V

    goto :goto_0

    .line 494
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;->y:I

    if-le v0, p3, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    iget v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->key_vertical_gap:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->increaseTL(III)V

    goto :goto_0

    .line 504
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;->x:I

    if-ge v0, p2, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    iget v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->key_horizontal_gap:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;->y:I

    if-gt v0, p3, :cond_4

    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    iget v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->key_vertical_gap:I

    add-int/2addr v0, v1

    if-gt p3, v0, :cond_4

    .line 508
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->increaseBR(III)V

    goto/16 :goto_0

    .line 510
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;->y:I

    if-le v0, p3, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    iget v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->key_vertical_gap:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->increaseTR(III)V

    goto/16 :goto_0
.end method
