.class public Lcom/samsung/inputmethod/dialog/SimeDialogManager;
.super Ljava/lang/Object;
.source "SimeDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeDialogManager"


# instance fields
.field private mContactInfoDialog:Landroid/app/AlertDialog;

.field private mDelUDBDialog:Landroid/app/AlertDialog;

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mInputLanguge:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;",
            ">;"
        }
    .end annotation
.end field

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mOptionsDialog:Landroid/app/AlertDialog;

.field mRes:Landroid/content/res/Resources;

.field private mTabEditInterface:Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

.field private mTutorialDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 2
    .parameter "ime"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 85
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 86
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    .line 87
    new-instance v0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mTabEditInterface:Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

    .line 88
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mInputLanguge:Ljava/util/Vector;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)Lcom/samsung/inputmethod/SamsungIME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mOptionsDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mInputLanguge:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    return-object v0
.end method


# virtual methods
.method public ClearAllPopupMenu()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->miniSymbolScreenon:Z

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->cancelMiniPopupWindow()V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mDelUDBDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mDelUDBDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mDelUDBDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mContactInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mContactInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 490
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mContactInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 493
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mTutorialDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 494
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 501
    :cond_4
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mDelUDBDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mDelUDBDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mDelUDBDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mContactInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mContactInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mContactInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mTutorialDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 517
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 520
    :cond_3
    return-void
.end method

.method public showContactDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 12
    .parameter "okListener"
    .parameter "candId"

    .prologue
    const v11, 0x7f0b0055

    const v10, 0x7f0b003a

    .line 194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getContactData()[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    move-result-object v1

    .line 201
    .local v1, contactData:[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;
    if-nez v1, :cond_0

    .line 202
    const-string v7, "SimeDialogManager"

    const-string v8, "contactData exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    aget-object v7, v1, p2

    iget v3, v7, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->dataCount:I

    .line 206
    .local v3, itemCount:I
    new-array v4, v3, [Ljava/lang/String;

    .line 210
    .local v4, items:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 211
    aget-object v7, v1, p2

    iget-object v7, v7, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->data:[Ljava/lang/String;

    aget-object v7, v7, v2

    aput-object v7, v4, v2

    .line 214
    aget-object v7, v1, p2

    iget-object v7, v7, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->mimeType:[Ljava/lang/String;

    aget-object v7, v7, v2

    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 215
    aget-object v7, v1, p2

    iget-object v7, v7, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->dataType:[I

    aget v7, v7, v2

    packed-switch v7, :pswitch_data_0

    .line 277
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    .line 210
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b0035

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto :goto_1

    .line 220
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b0039

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto :goto_1

    .line 223
    :pswitch_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b0042

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto :goto_1

    .line 226
    :pswitch_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b0034

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 229
    :pswitch_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b0033

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 232
    :pswitch_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b003e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 235
    :pswitch_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 238
    :pswitch_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b002f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 241
    :pswitch_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b0030

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 244
    :pswitch_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b0031

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 247
    :pswitch_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b0036

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 250
    :pswitch_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b0037

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 253
    :pswitch_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b003b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 256
    :pswitch_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 259
    :pswitch_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b0040

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 262
    :pswitch_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b0041

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 265
    :pswitch_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b0043

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 268
    :pswitch_11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b0044

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 271
    :pswitch_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b002e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 274
    :pswitch_13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b0038

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 281
    :cond_2
    aget-object v7, v1, p2

    iget-object v7, v7, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->mimeType:[Ljava/lang/String;

    aget-object v7, v7, v2

    const-string v8, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 282
    aget-object v7, v1, p2

    iget-object v7, v7, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->dataType:[I

    aget v7, v7, v2

    packed-switch v7, :pswitch_data_1

    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 284
    :pswitch_14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b0057

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 287
    :pswitch_15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b005a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 290
    :pswitch_16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 293
    :pswitch_17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0b0058

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto/16 :goto_1

    .line 303
    :cond_3
    aget-object v7, v1, p2

    iget-object v7, v7, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 304
    invoke-virtual {v0, v4, p1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 305
    const/high16 v7, 0x104

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mContactInfoDialog:Landroid/app/AlertDialog;

    .line 308
    iget-object v7, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mContactInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 309
    .local v6, window:Landroid/view/Window;
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 310
    .local v5, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v7, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    iput-object v7, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 311
    const/16 v7, 0x7d8

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 312
    invoke-virtual {v6, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 313
    const/high16 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 316
    iget-object v7, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mContactInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 317
    return-void

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 282
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public showDelUdbDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5
    .parameter "okListener"

    .prologue
    .line 153
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_0

    .line 155
    const v3, 0x104000a

    invoke-virtual {v0, v3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    :cond_0
    const/high16 v3, 0x104

    new-instance v4, Lcom/samsung/inputmethod/dialog/SimeDialogManager$5;

    invoke-direct {v4, p0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager$5;-><init>(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 161
    new-instance v3, Lcom/samsung/inputmethod/dialog/SimeDialogManager$6;

    invoke-direct {v3, p0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager$6;-><init>(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    new-instance v3, Lcom/samsung/inputmethod/dialog/SimeDialogManager$7;

    invoke-direct {v3, p0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager$7;-><init>(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 179
    iget-object v3, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mDelUDBDialog:Landroid/app/AlertDialog;

    .line 181
    iget-object v3, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mDelUDBDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 182
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 183
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 184
    const/16 v3, 0x3eb

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 185
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 186
    const/high16 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 187
    iget-object v3, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mDelUDBDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 188
    return-void
.end method

.method public showOptionsMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 92
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 94
    const v5, 0x7f020002

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 95
    const/high16 v5, 0x104

    new-instance v6, Lcom/samsung/inputmethod/dialog/SimeDialogManager$1;

    invoke-direct {v6, p0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager$1;-><init>(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    new-instance v5, Lcom/samsung/inputmethod/dialog/SimeDialogManager$2;

    invoke-direct {v5, p0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager$2;-><init>(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 106
    new-instance v5, Lcom/samsung/inputmethod/dialog/SimeDialogManager$3;

    invoke-direct {v5, p0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager$3;-><init>(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    iget-object v5, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b0011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, itemSettings:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b0012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, itemInputMethod:Ljava/lang/CharSequence;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v1, v5, v7

    new-instance v6, Lcom/samsung/inputmethod/dialog/SimeDialogManager$4;

    invoke-direct {v6, p0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager$4;-><init>(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    iget-object v5, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 137
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 138
    iget-object v5, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 139
    .local v4, window:Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 140
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 141
    const/16 v5, 0x3eb

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 142
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 143
    const/high16 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 144
    iget-object v5, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 145
    return-void
.end method

.method public showSelectLanguage()V
    .locals 15

    .prologue
    .line 326
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v13, :cond_0

    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 426
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->removeAllElements()V

    .line 330
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->clear()V

    .line 332
    new-instance v2, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;-><init>(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)V

    .line 333
    .local v2, chn:Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0014

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;->langStr:Ljava/lang/String;

    .line 334
    const/high16 v13, 0x2

    iput v13, v2, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;->langMask:I

    .line 336
    new-instance v8, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;

    invoke-direct {v8, p0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;-><init>(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)V

    .line 337
    .local v8, kor:Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0017

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;->langStr:Ljava/lang/String;

    .line 338
    const/high16 v13, 0x3

    iput v13, v8, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;->langMask:I

    .line 340
    new-instance v5, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;

    invoke-direct {v5, p0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;-><init>(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)V

    .line 341
    .local v5, eng:Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0015

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;->langStr:Ljava/lang/String;

    .line 342
    const/high16 v13, 0x1

    iput v13, v5, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;->langMask:I

    .line 344
    new-instance v6, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;

    invoke-direct {v6, p0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;-><init>(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)V

    .line 345
    .local v6, hk:Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0016

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;->langStr:Ljava/lang/String;

    .line 346
    const/high16 v13, 0x5

    iput v13, v6, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;->langMask:I

    .line 348
    new-instance v11, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;

    invoke-direct {v11, p0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;-><init>(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)V

    .line 349
    .local v11, tw:Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0019

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;->langStr:Ljava/lang/String;

    .line 350
    const/high16 v13, 0x4

    iput v13, v11, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;->langMask:I

    .line 353
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 354
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 356
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 357
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 359
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 360
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 362
    :cond_3
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 363
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 365
    :cond_4
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 375
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v9

    .line 376
    .local v9, length:I
    const/4 v3, 0x0

    .line 377
    .local v3, currentIndex:I
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v13

    const/high16 v14, 0xf

    and-int v4, v13, v14

    .line 378
    .local v4, currentInputLanguae:I
    new-array v0, v9, [Ljava/lang/String;

    .line 379
    .local v0, Items:[Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v9, :cond_6

    .line 380
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;

    iget-object v13, v13, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;->langStr:Ljava/lang/String;

    aput-object v13, v0, v7

    .line 381
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mInputLanguge:Ljava/util/Vector;

    invoke-virtual {v13, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;

    iget v13, v13, Lcom/samsung/inputmethod/dialog/SimeDialogManager$InputLanguge;->langMask:I

    if-ne v13, v4, :cond_5

    .line 382
    move v3, v7

    .line 379
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 386
    :cond_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v1, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 387
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v13, 0x7f0b007a

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 388
    const/high16 v13, 0x104

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 390
    new-instance v13, Lcom/samsung/inputmethod/dialog/SimeDialogManager$8;

    invoke-direct {v13, p0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager$8;-><init>(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)V

    invoke-virtual {v1, v0, v3, v13}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 412
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    iput-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 413
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 415
    .local v12, window:Landroid/view/Window;
    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 416
    .local v10, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 417
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v13

    iput-object v13, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 419
    :cond_7
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 420
    const v13, 0x107dc

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 424
    :goto_2
    invoke-virtual {v12, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 425
    iget-object v13, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 422
    :cond_8
    const v13, 0x103eb

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_2
.end method

.method public showTabEditDialog()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mTabEditInterface:Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mTabEditInterface:Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->showDialog()V

    .line 432
    :cond_0
    return-void
.end method

.method public showTutorialDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 438
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 440
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x104000a

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 442
    iget-object v5, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030023

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 444
    .local v2, dialogView:Landroid/view/View;
    const v5, 0x7f0c0085

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 445
    .local v1, checkBox:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getShowToturial()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 446
    new-instance v5, Lcom/samsung/inputmethod/dialog/SimeDialogManager$9;

    invoke-direct {v5, p0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager$9;-><init>(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 452
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 454
    iget-object v5, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b0051

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 456
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mTutorialDialog:Landroid/app/AlertDialog;

    .line 457
    iget-object v5, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 458
    .local v4, window:Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 459
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 460
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 461
    const/16 v5, 0x7dc

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 466
    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 467
    const/high16 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 469
    iget-object v5, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mTutorialDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 470
    return-void

    .line 445
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v4           #window:Landroid/view/Window;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 463
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v4       #window:Landroid/view/Window;
    :cond_1
    const/16 v5, 0x3eb

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1
.end method
