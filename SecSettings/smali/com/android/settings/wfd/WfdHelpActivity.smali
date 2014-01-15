.class public Lcom/android/settings_ex/wfd/WfdHelpActivity;
.super Landroid/app/Activity;
.source "WfdHelpActivity.java"


# static fields
.field public static final ACTION_ALL_CLEAR:Ljava/lang/String; = "com.samsung.wfd.ALL_CLEAR"

.field public static final ACTION_DP_HELP:Ljava/lang/String; = "com.samsung.wfd.DP_HELP"

.field public static final ACTION_NFC_HELP:Ljava/lang/String; = "com.samsung.wfd.NFC_HELP"

.field public static final ACTION_SELECT_DEV:Ljava/lang/String; = "com.samsung.wfd.SELECT_DEV"

.field public static final ACTION_WRITE_TAG:Ljava/lang/String; = "com.samsung.wfd.WRITE_NFC"

.field private static final MENU_ID_LEARN_NFC:I = 0x1

.field private static final MENU_ID_START_LINK:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mInSettingsMode:Z

.field private mIsReadOnlyChecked:Z

.field private mMenuItemLearnNfc:Landroid/view/MenuItem;

.field private mMenuItemStartLink:Landroid/view/MenuItem;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWriteTagMode:Z

.field private nfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    const-string v0, "WfdHelpActivity"

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->TAG:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    .line 66
    iput-object v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mMenuItemStartLink:Landroid/view/MenuItem;

    .line 68
    iput-boolean v1, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mInSettingsMode:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mIsReadOnlyChecked:Z

    .line 82
    new-instance v0, Lcom/android/settings_ex/wfd/WfdHelpActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wfd/WfdHelpActivity$1;-><init>(Lcom/android/settings_ex/wfd/WfdHelpActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 89
    new-instance v0, Lcom/android/settings_ex/wfd/WfdHelpActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wfd/WfdHelpActivity$2;-><init>(Lcom/android/settings_ex/wfd/WfdHelpActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/wfd/WfdHelpActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mIsReadOnlyChecked:Z

    return p1
.end method

.method public static changeNfcEnabled(Landroid/content/Context;Z)Z
    .locals 6
    .parameter "context"
    .parameter "enabled"

    .prologue
    const/4 v5, 0x0

    .line 235
    move v1, p1

    .line 236
    .local v1, desiredState:Z
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 237
    .local v2, nfcAdapter:Landroid/nfc/NfcAdapter;
    const-string v0, "WfdHelpActivity"

    .line 239
    .local v0, TAG:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 285
    :goto_0
    return v5

    .line 244
    :cond_0
    new-instance v3, Lcom/android/settings_ex/wfd/WfdHelpActivity$5;

    const-string v4, "toggleNFC"

    invoke-direct {v3, v4, v1, v2}, Lcom/android/settings_ex/wfd/WfdHelpActivity$5;-><init>(Ljava/lang/String;ZLandroid/nfc/NfcAdapter;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private isWfdConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 452
    const-string v2, "wfd"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    .line 453
    .local v0, wfdManager:Lcom/samsung/wfd/WfdManager;
    if-eqz v0, :cond_1

    .line 454
    const-string v2, "WfdHelpActivity"

    const-string v3, "AllShare Cast is turned on..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    .line 460
    :goto_0
    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 470
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 457
    :cond_1
    const-string v2, "WfdHelpActivity"

    const-string v3, "mWfdManager is null !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    :pswitch_0
    const-string v2, "WfdHelpActivity"

    const-string v3, "isWfdConnected >> true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 462
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private makeNdefMessage(Ljava/lang/String;)Landroid/nfc/NdefMessage;
    .locals 5
    .parameter "addr"

    .prologue
    .line 388
    const-string v2, "WfdHelpActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "make Ndef message - addr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 392
    .local v0, addrBytes:[B
    const-string v2, "com.android.settings_ex.wfd"

    const-string v3, "addr"

    invoke-static {v2, v3, v0}, Landroid/nfc/NdefRecord;->createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 394
    .local v1, addrRecord:Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v2
.end method

.method private setHelpText()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 221
    const v3, 0x7f0b03ed

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wfd/IndexedTextLayout;

    .line 222
    .local v0, idxTextLayout:Lcom/android/settings_ex/wfd/IndexedTextLayout;
    const v3, 0x7f090464

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wfd/IndexedTextLayout;->addContent(I)V

    .line 224
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090465

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, result_msg2:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wfd/IndexedTextLayout;->addContent(Ljava/lang/String;)V

    .line 227
    const v3, 0x7f090466

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wfd/IndexedTextLayout;->addContent(I)V

    .line 229
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090467

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, result_msg4:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wfd/IndexedTextLayout;->addContent(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method private setHelpText2()V
    .locals 2

    .prologue
    .line 198
    const v1, 0x7f0b03ed

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wfd/IndexedTextLayout;

    .line 199
    .local v0, idxTextLayout:Lcom/android/settings_ex/wfd/IndexedTextLayout;
    const v1, 0x7f090461

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wfd/IndexedTextLayout;->addContent(I)V

    .line 201
    const v1, 0x7f090462

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wfd/IndexedTextLayout;->addContent(I)V

    .line 203
    const v1, 0x7f090463

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wfd/IndexedTextLayout;->addContent(I)V

    .line 205
    return-void
.end method

.method private setIsSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "called_by_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mInSettingsMode:Z

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mInSettingsMode:Z

    goto :goto_0
.end method

.method private setWriteText()V
    .locals 6

    .prologue
    const v5, 0x7f0b03ed

    const v4, 0x7f090468

    .line 208
    const-string v1, "WfdHelpActivity"

    const-string v2, "setWriteText"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
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

    .line 211
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wfd/IndexedTextLayout;

    .line 212
    .local v0, idxTextLayout:Lcom/android/settings_ex/wfd/IndexedTextLayout;
    invoke-virtual {v0, v4}, Lcom/android/settings_ex/wfd/IndexedTextLayout;->addContent(I)V

    .line 213
    const v1, 0x7f090469

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wfd/IndexedTextLayout;->addContent(I)V

    .line 218
    :goto_0
    return-void

    .line 215
    .end local v0           #idxTextLayout:Lcom/android/settings_ex/wfd/IndexedTextLayout;
    :cond_0
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wfd/IndexedTextLayout;

    .line 216
    .restart local v0       #idxTextLayout:Lcom/android/settings_ex/wfd/IndexedTextLayout;
    invoke-virtual {v0, v4}, Lcom/android/settings_ex/wfd/IndexedTextLayout;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 509
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 511
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, intentAction:Ljava/lang/String;
    const-string v2, "com.samsung.wfd.DP_HELP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    iput-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 514
    const v2, 0x7f040151

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 515
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdHelpActivity;->setHelpText()V

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    const-string v2, "com.samsung.wfd.WRITE_NFC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 518
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 519
    const v2, 0x7f040157

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 520
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdHelpActivity;->setWriteText()V

    .line 522
    const v2, 0x7f0b0401

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 523
    .local v1, isReadOnly:Landroid/widget/CheckBox;
    iget-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mIsReadOnlyChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 524
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 525
    .end local v1           #isReadOnly:Landroid/widget/CheckBox;
    :cond_2
    const-string v2, "com.samsung.wfd.NFC_HELP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    iput-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 527
    const v2, 0x7f040158

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 528
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdHelpActivity;->setHelpText2()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "icicle"

    .prologue
    .line 106
    const-string v11, "WfdHelpActivity"

    const-string v12, "onCreate"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v5, intentFilter:Landroid/content/IntentFilter;
    const-string v11, "com.samsung.wfd.ALL_CLEAR"

    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v11, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v11, v5}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdHelpActivity;->setIsSettings()V

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 116
    .local v1, bar:Landroid/app/ActionBar;
    iget-boolean v11, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v11, :cond_0

    .line 117
    const/high16 v11, 0x7f03

    invoke-virtual {v1, v11}, Landroid/app/ActionBar;->setIcon(I)V

    .line 120
    :cond_0
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 121
    const v11, 0x7f09041c

    invoke-virtual {v1, v11}, Landroid/app/ActionBar;->setTitle(I)V

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, intentAction:Ljava/lang/String;
    const-string v11, "WfdHelpActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "received action is : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v11, "com.samsung.wfd.DP_HELP"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 127
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 128
    const v11, 0x7f040151

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    .line 129
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdHelpActivity;->setHelpText()V

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 131
    :cond_2
    const-string v11, "com.samsung.wfd.WRITE_NFC"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 132
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 134
    const v11, 0x7f040157

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    .line 135
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdHelpActivity;->setWriteText()V

    .line 137
    const v11, 0x7f0b0401

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 138
    .local v6, isReadOnly:Landroid/widget/CheckBox;
    iget-object v11, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v6, v11}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    const-string v11, "nfc"

    invoke-virtual {p0, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/NfcManager;

    .line 142
    .local v7, manager:Landroid/nfc/NfcManager;
    invoke-virtual {v7}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 143
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_1

    .line 144
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 147
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f040156

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 148
    .local v10, vwTitleView:Landroid/view/View;
    const v11, 0x7f0b00f7

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 149
    .local v9, txViewTitle:Landroid/widget/TextView;
    const v11, 0x7f090443

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 150
    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 152
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 153
    .local v8, tv:Landroid/widget/TextView;
    const/high16 v11, 0x41a0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 155
    const v11, 0x7f090460

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    .line 156
    const/16 v11, 0x16

    const/16 v12, 0x16

    const/16 v13, 0x16

    const/16 v14, 0x16

    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 158
    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 159
    const v11, 0x7f090721

    new-instance v12, Lcom/android/settings_ex/wfd/WfdHelpActivity$3;

    invoke-direct {v12, p0}, Lcom/android/settings_ex/wfd/WfdHelpActivity$3;-><init>(Lcom/android/settings_ex/wfd/WfdHelpActivity;)V

    invoke-virtual {v2, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 169
    const v11, 0x7f090722

    new-instance v12, Lcom/android/settings_ex/wfd/WfdHelpActivity$4;

    invoke-direct {v12, p0}, Lcom/android/settings_ex/wfd/WfdHelpActivity$4;-><init>(Lcom/android/settings_ex/wfd/WfdHelpActivity;)V

    invoke-virtual {v2, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 180
    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #isReadOnly:Landroid/widget/CheckBox;
    .end local v7           #manager:Landroid/nfc/NfcManager;
    .end local v8           #tv:Landroid/widget/TextView;
    .end local v9           #txViewTitle:Landroid/widget/TextView;
    .end local v10           #vwTitleView:Landroid/view/View;
    :cond_3
    const-string v11, "com.samsung.wfd.NFC_HELP"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 181
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 182
    const v11, 0x7f040158

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    .line 183
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdHelpActivity;->setHelpText2()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 476
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "called_by_nfc"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "called_by_nfc"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    const v2, 0x7f09045c

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    .line 483
    :goto_0
    const/4 v2, 0x2

    const v3, 0x7f09045b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mMenuItemStartLink:Landroid/view/MenuItem;

    .line 486
    const-string v2, "nfc"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcManager;

    .line 487
    .local v1, manager:Landroid/nfc/NfcManager;
    invoke-virtual {v1}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 488
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mWriteTagMode:Z

    if-nez v2, :cond_1

    .line 494
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.wfd.NFC_HELP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 495
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mMenuItemStartLink:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 497
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 504
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 480
    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    .end local v1           #manager:Landroid/nfc/NfcManager;
    :cond_0
    const v2, 0x7f09045a

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    goto :goto_0

    .line 489
    .restart local v0       #adapter:Landroid/nfc/NfcAdapter;
    .restart local v1       #manager:Landroid/nfc/NfcManager;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 490
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mMenuItemStartLink:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 499
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 501
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mMenuItemStartLink:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 313
    const-string v4, "WfdHelpActivity"

    const-string v5, "onNewIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v4, "WfdHelpActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWriteTagMode ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mWriteTagMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mWriteTagMode:Z

    if-eqz v4, :cond_1

    .line 317
    const-string v4, "WfdPickerActivity"

    invoke-virtual {p0, v4, v7}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 319
    .local v3, pref_r:Landroid/content/SharedPreferences;
    const-string v4, "wlan.wfd.lastdeviceaddr"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, mLastDeviceAddr:Ljava/lang/String;
    const-string v4, "WfdHelpActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wfd/WfdHelpActivity;->makeNdefMessage(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 324
    .local v2, message:Landroid/nfc/NdefMessage;
    const-string v4, "android.nfc.extra.TAG"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 326
    .local v0, detectedTag:Landroid/nfc/Tag;
    invoke-virtual {p0, v2, v0}, Lcom/android/settings_ex/wfd/WfdHelpActivity;->writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    const v4, 0x7f09045e

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 332
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 337
    .end local v0           #detectedTag:Landroid/nfc/Tag;
    .end local v1           #mLastDeviceAddr:Ljava/lang/String;
    .end local v2           #message:Landroid/nfc/NdefMessage;
    .end local v3           #pref_r:Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .line 329
    .restart local v0       #detectedTag:Landroid/nfc/Tag;
    .restart local v1       #mLastDeviceAddr:Ljava/lang/String;
    .restart local v2       #message:Landroid/nfc/NdefMessage;
    .restart local v3       #pref_r:Landroid/content/SharedPreferences;
    :cond_0
    const v4, 0x7f09045f

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 335
    .end local v0           #detectedTag:Landroid/nfc/Tag;
    .end local v1           #mLastDeviceAddr:Ljava/lang/String;
    .end local v2           #message:Landroid/nfc/NdefMessage;
    .end local v3           #pref_r:Landroid/content/SharedPreferences;
    :cond_1
    const-string v4, "WfdHelpActivity"

    const-string v5, "Activity received other intent from NDEF_DISCOVER"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/high16 v6, 0x1080

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 402
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 448
    :goto_0
    return v2

    .line 404
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "called_by_nfc"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "called_by_nfc"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    const-string v2, "wfd"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wfd/WfdManager;

    .line 406
    .local v1, wfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 407
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "show_dialog_once"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 409
    const-string v2, "called_by_nfc"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 410
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 411
    iget-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v2, :cond_0

    .line 412
    const-string v2, "called_by_settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 414
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #wfdManager:Lcom/samsung/wfd/WfdManager;
    :goto_1
    move v2, v3

    .line 448
    goto :goto_0

    .line 416
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.NFC_HELP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .restart local v0       #intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v2, :cond_2

    .line 418
    const-string v2, "called_by_settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    :cond_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 424
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdHelpActivity;->isWfdConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 425
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.WRITE_NFC"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .restart local v0       #intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v2, :cond_3

    .line 427
    const-string v2, "called_by_settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 429
    :cond_3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 431
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "show_dialog_once"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 433
    const-string v2, "tag_write_if_success"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 435
    iget-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v2, :cond_5

    .line 436
    const-string v2, "called_by_settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 438
    :cond_5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 442
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    const-string v2, "WfdHelpActivity"

    const-string v4, "back button tapped"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 402
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 304
    const-string v1, "WfdHelpActivity"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 307
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 309
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 291
    const-string v2, "WfdHelpActivity"

    const-string v4, "onResume"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 294
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x2000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 296
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    move-object v2, v3

    .line 297
    check-cast v2, [[Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 299
    :cond_0
    return-void
.end method

.method writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z
    .locals 8
    .parameter "message"
    .parameter "tag"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 340
    const-string v6, "WfdHelpActivity"

    const-string v7, "writeTag"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v6

    array-length v3, v6

    .line 344
    .local v3, size:I
    :try_start_0
    invoke-static {p2}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    .line 345
    .local v2, ndef:Landroid/nfc/tech/Ndef;
    if-eqz v2, :cond_3

    .line 346
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->connect()V

    .line 348
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 349
    const-string v5, "WfdHelpActivity"

    const-string v6, "Tag is read-only."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .end local v2           #ndef:Landroid/nfc/tech/Ndef;
    :goto_0
    return v4

    .line 353
    .restart local v2       #ndef:Landroid/nfc/tech/Ndef;
    :cond_0
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v6

    if-ge v6, v3, :cond_1

    .line 354
    const-string v5, "WfdHelpActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tag capacity is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes, message is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 379
    .end local v2           #ndef:Landroid/nfc/tech/Ndef;
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Ljava/io/IOException;
    const-string v5, "WfdHelpActivity"

    const-string v6, "Failed to write tag"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #ndef:Landroid/nfc/tech/Ndef;
    :cond_1
    :try_start_1
    invoke-virtual {v2, p1}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 361
    iget-boolean v6, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity;->mIsReadOnlyChecked:Z

    if-eqz v6, :cond_2

    .line 362
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->makeReadOnly()Z

    .line 365
    :cond_2
    const-string v6, "WfdHelpActivity"

    const-string v7, "Wrote message to pre-formatted tag."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.wfd.ALL_CLEAR"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v5

    .line 367
    goto :goto_0

    .line 369
    :cond_3
    invoke-static {p2}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;

    move-result-object v1

    .line 370
    .local v1, format:Landroid/nfc/tech/NdefFormatable;
    if-eqz v1, :cond_4

    .line 371
    invoke-virtual {v1}, Landroid/nfc/tech/NdefFormatable;->connect()V

    .line 372
    invoke-virtual {v1, p1}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V

    .line 373
    const-string v6, "WfdHelpActivity"

    const-string v7, "Formatted tag and wrote message"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 374
    goto :goto_0

    .line 376
    :cond_4
    const-string v5, "WfdHelpActivity"

    const-string v6, "Tag doesn\'t support NDEF."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 381
    .end local v1           #format:Landroid/nfc/tech/NdefFormatable;
    .end local v2           #ndef:Landroid/nfc/tech/Ndef;
    :catch_1
    move-exception v0

    .line 382
    .local v0, e:Landroid/nfc/FormatException;
    const-string v5, "WfdHelpActivity"

    const-string v6, "Failed to write tag because of FormatException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
