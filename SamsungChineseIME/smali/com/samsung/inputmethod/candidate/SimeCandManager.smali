.class public Lcom/samsung/inputmethod/candidate/SimeCandManager;
.super Landroid/widget/LinearLayout;
.source "SimeCandManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/candidate/SimeCandManager$1;,
        Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;,
        Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;,
        Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;,
        Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;,
        Lcom/samsung/inputmethod/candidate/SimeCandManager$MsgThread;,
        Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeCandManager"

.field private static mHandler:Lcom/samsung/inputmethod/candidate/SimeCandManager$MsgThread;


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mActiveCCItem:Landroid/widget/RelativeLayout;

.field private mCandProcessor:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

.field private mChnDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

.field private mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

.field private mDefaultListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;

.field private mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

.field private mExpandListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;

.field private mExpandPYItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

.field private mExpandWindow:Landroid/widget/PopupWindow;

.field private mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

.field private mHWRListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;

.field private mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

.field private mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mMoveHandler:Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;

.field private mPinYinListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;

.field private mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

.field private mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

.field public mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

.field private mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

.field private mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

.field private mVerticalWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->inflater:Landroid/view/LayoutInflater;

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mCandProcessor:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandPYItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mChnDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/inputmethod/candidate/SimeCandManager;)Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    return-object v0
.end method

.method private getCommonItemLayoutParameter()Landroid/widget/LinearLayout$LayoutParams;
    .locals 5

    .prologue
    const/4 v2, -0x2

    const/4 v4, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 161
    .local v1, r:Landroid/content/res/Resources;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 164
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_1

    .line 165
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getOneHandMode()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    if-ne v2, v3, :cond_0

    .line 166
    const v2, 0x7f0a0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 171
    :goto_0
    return-object v0

    .line 168
    :cond_0
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public static postMessage(IJ)V
    .locals 3
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    .line 199
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHandler:Lcom/samsung/inputmethod/candidate/SimeCandManager$MsgThread;

    invoke-static {v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 200
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 201
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHandler:Lcom/samsung/inputmethod/candidate/SimeCandManager$MsgThread;

    invoke-virtual {v1, v0, p1, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager$MsgThread;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHandler:Lcom/samsung/inputmethod/candidate/SimeCandManager$MsgThread;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager$MsgThread;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setCanContainerBg(Z)V
    .locals 4
    .parameter "transparent"

    .prologue
    .line 234
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "onehand_samsungkeypad_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 235
    .local v0, isOneHandMode:I
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBAR_SUPPORT_ONEHAND:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    if-nez p1, :cond_2

    .line 240
    const v1, 0x7f0202d3

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setBackgroundResource(I)V

    goto :goto_0

    .line 245
    :cond_2
    const v1, 0x7f020003

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private showLeftWindow(Z)V
    .locals 9
    .parameter "show"

    .prologue
    const/16 v8, 0x3c

    const/16 v7, 0x32

    const/16 v6, 0x2a

    const/4 v4, 0x0

    const/16 v5, 0x53

    .line 1117
    if-eqz p1, :cond_b

    .line 1119
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 1120
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1122
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_1

    .line 1123
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p0, v5, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1163
    .end local v1           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    :cond_0
    :goto_0
    return-void

    .line 1124
    .restart local v1       #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_7

    .line 1125
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getOneHandMode()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    if-ne v2, v3, :cond_4

    .line 1126
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1127
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    const/16 v3, 0x5c

    invoke-virtual {v2, p0, v5, v3, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1128
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw360dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1129
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    const/16 v3, 0x74

    invoke-virtual {v2, p0, v5, v3, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1131
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    const/16 v3, 0x8a

    invoke-virtual {v2, p0, v5, v3, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1134
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1135
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    const/16 v3, 0x12

    invoke-virtual {v2, p0, v5, v3, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1136
    :cond_5
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw360dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1137
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    const/16 v3, 0x18

    invoke-virtual {v2, p0, v5, v3, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1139
    :cond_6
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    const/16 v3, 0x20

    invoke-virtual {v2, p0, v5, v3, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1142
    :cond_7
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_0

    .line 1144
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 1145
    .local v0, anchor:Landroid/graphics/Point;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1146
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v2, p0, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1147
    :cond_8
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1148
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v2, p0, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 1150
    :cond_9
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, p0, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 1154
    .end local v0           #anchor:Landroid/graphics/Point;
    :cond_a
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->update()V

    goto/16 :goto_0

    .line 1158
    .end local v1           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    :cond_b
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 1159
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 1160
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0
.end method


# virtual methods
.method public dismissRealCandidates()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 439
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 442
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 445
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 448
    return-void
.end method

.method public getActivCCItem()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getCCShowType()Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    return-object v0
.end method

.method public getCandVerScrollContainer()Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    return-object v0
.end method

.method public getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    return-object v0
.end method

.method public getExpandCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    return-object v0
.end method

.method public getExpandPYContainer()Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandPYItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    return-object v0
.end method

.method public getHeightCandidatesShowing()I
    .locals 7

    .prologue
    .line 790
    const/4 v2, 0x0

    .line 791
    .local v2, height:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getChildCount()I

    move-result v0

    .line 792
    .local v0, childNum:I
    const/4 v4, 0x0

    .line 794
    .local v4, showingCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 795
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 796
    add-int/lit8 v4, v4, 0x1

    .line 794
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 799
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 800
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 801
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCandHeight()I

    move-result v5

    mul-int v2, v5, v4

    .line 806
    :goto_1
    return v2

    .line 804
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v5

    mul-int v2, v5, v4

    goto :goto_1
.end method

.method public getHeightRealCandidatesShowing()I
    .locals 7

    .prologue
    .line 810
    const/4 v2, 0x0

    .line 811
    .local v2, height:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getChildCount()I

    move-result v0

    .line 812
    .local v0, childNum:I
    const/4 v4, 0x0

    .line 814
    .local v4, showingCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 815
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mMoveHandler:Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;

    if-eq v5, v6, :cond_0

    .line 816
    add-int/lit8 v4, v4, 0x1

    .line 814
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 819
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 820
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 821
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCandHeight()I

    move-result v5

    mul-int v2, v5, v4

    .line 826
    :goto_1
    return v2

    .line 824
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v5

    mul-int v2, v5, v4

    goto :goto_1
.end method

.method public getTabModeContainer()Lcom/samsung/inputmethod/tabmode/SimeTabContainer;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    return-object v0
.end method

.method public getToolBarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    return-object v0
.end method

.method public getTopCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    return-object v0
.end method

.method public hideExpandCandidateWindow()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1262
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isExpandWindowShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    invoke-virtual {p0, v1, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(ZZ)V

    .line 1264
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    .line 1266
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/comm/SimeBalloonHint;)V
    .locals 7
    .parameter "ime"
    .parameter "balloonHint"

    .prologue
    const v6, 0x7f030001

    const/16 v5, 0x7dc

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 250
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 251
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHandler:Lcom/samsung/inputmethod/candidate/SimeCandManager$MsgThread;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$MsgThread;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager$MsgThread;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHandler:Lcom/samsung/inputmethod/candidate/SimeCandManager$MsgThread;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-static {v0}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    .line 257
    new-instance v0, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mMoveHandler:Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;

    .line 258
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mMoveHandler:Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->addView(Landroid/view/View;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mMoveHandler:Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    .line 263
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->addView(Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    .line 267
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->addView(Landroid/view/View;)V

    .line 268
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030020

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    .line 271
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->addView(Landroid/view/View;)V

    .line 272
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isKeyGuardScreen()Z

    move-result v0

    if-nez v0, :cond_4

    .line 273
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    invoke-virtual {v0, v4}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->setVisibility(I)V

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001e

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    .line 279
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->addView(Landroid/view/View;)V

    .line 280
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 281
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    invoke-virtual {v0, v4}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->setVisibility(I)V

    .line 286
    :goto_1
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDefaultListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;

    .line 288
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030008

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    .line 289
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030009

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandPYItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    .line 291
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandPYItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->setVisibility(I)V

    .line 292
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    .line 293
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isGridExpd()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 294
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandPYItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 298
    :goto_2
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 299
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030003

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    .line 306
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 307
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    .line 308
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 309
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 310
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 313
    :cond_2
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWRListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;

    .line 314
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mPinYinListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;

    .line 315
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;

    .line 317
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0, v3, p2, p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->initialize(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Lcom/samsung/inputmethod/candidate/SimeCandManager;)V

    .line 318
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mPinYinListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;

    invoke-virtual {v0, v1, p2, p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->initialize(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Lcom/samsung/inputmethod/candidate/SimeCandManager;)V

    .line 319
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDefaultListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$DefaultCVChoiceNotifier;

    invoke-virtual {v0, v1, p2, p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->initialize(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Lcom/samsung/inputmethod/candidate/SimeCandManager;)V

    .line 320
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$ExpandCVChoiceNotifier;

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->initialize(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/candidate/SimeCandViewListener;Lcom/samsung/inputmethod/candidate/SimeCandManager;)V

    .line 321
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandPYItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mPinYinListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->initialize(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V

    .line 322
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    if-eqz v0, :cond_7

    .line 323
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->initialize(Lcom/samsung/inputmethod/SamsungIME;)V

    .line 328
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 329
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 330
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 333
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 358
    :goto_4
    return-void

    .line 275
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->setVisibility(I)V

    goto/16 :goto_0

    .line 283
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->setVisibility(I)V

    goto/16 :goto_1

    .line 296
    :cond_6
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 324
    :cond_7
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->initialize(Lcom/samsung/inputmethod/SamsungIME;)V

    goto :goto_3

    .line 336
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    .line 337
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getHWDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    .line 338
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mChnDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    .line 340
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mCandProcessor:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    .line 341
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mCandProcessor:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->initialize(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V

    .line 343
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setVerticalGravity(I)V

    .line 348
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 349
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->OnlyTabBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 350
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    goto :goto_4

    .line 351
    :cond_9
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isKeyGuardScreen()Z

    move-result v0

    if-nez v0, :cond_a

    .line 352
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->OnlyToolBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 353
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    goto :goto_4

    .line 355
    :cond_a
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 356
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    goto/16 :goto_4
.end method

.method public isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z
    .locals 2
    .parameter "showType"

    .prologue
    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, ret:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    const/4 v0, 0x1

    .line 786
    :cond_0
    return v0
.end method

.method public isExpandWindowShown()Z
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    const/4 v0, 0x1

    .line 958
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGridExpd()Z
    .locals 1

    .prologue
    .line 361
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_PINYIN_EXPAND_LIST_ADJUST:Z

    if-nez v0, :cond_0

    .line 362
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseText()Z

    move-result v0

    goto :goto_0
.end method

.method public isNeedAdjustExpd()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 367
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_PINYIN_EXPAND_LIST_ADJUST:Z

    if-nez v2, :cond_0

    .line 376
    :goto_0
    return v1

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isGridExpd()Z

    move-result v0

    .line 370
    .local v0, isGridExpd:Z
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPinyinMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 372
    .local v1, isNeedAdjust:Z
    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->get34SplCandidates()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 373
    const/4 v1, 0x1

    goto :goto_0

    .line 375
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShowOneItem()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 928
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 929
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal_NoTabBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->OnlyTabBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 941
    :cond_1
    :goto_0
    return v0

    .line 935
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWTopHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinLeftAndCommon:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->OnlyToolBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-ne v2, v3, :cond_1

    :cond_3
    move v0, v1

    .line 939
    goto :goto_0
.end method

.method public isShowTwoItem()Z
    .locals 2

    .prologue
    .line 946
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWTopHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteBoxMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 950
    :cond_0
    const/4 v0, 0x1

    .line 952
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTabBarshown()Z
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    const/4 v0, 0x1

    .line 965
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    .line 1204
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 1205
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v4

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1209
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v3

    .line 1214
    .local v3, measuredWidth:I
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1216
    const/4 v4, -0x2

    invoke-super {p0, p1, v4}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1238
    .end local v3           #measuredWidth:I
    :goto_0
    return-void

    .line 1219
    :cond_0
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isFullscreenMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1220
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v3

    .line 1221
    .restart local v3       #measuredWidth:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getPaddingTop()I

    move-result v2

    .line 1222
    .local v2, measuredHeight:I
    const/4 v0, 0x2

    .line 1227
    .local v0, candidatesItemNum:I
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v4

    mul-int/2addr v4, v0

    add-int/2addr v2, v4

    .line 1230
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1231
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1233
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 1236
    .end local v0           #candidatesItemNum:I
    .end local v2           #measuredHeight:I
    .end local v3           #measuredWidth:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 744
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    .line 755
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 748
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    goto :goto_0

    .line 749
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    goto :goto_0
.end method

.method public preparePageCands()Z
    .locals 3

    .prologue
    .line 1100
    const/4 v0, 0x0

    .line 1104
    .local v0, bNewCandsAdded:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCandFetchOver()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1106
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getMoreCandidate(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 1107
    const/4 v0, 0x1

    .line 1112
    :cond_0
    return v0
.end method

.method public processKey(IZ)Z
    .locals 1
    .parameter "keyCode"
    .parameter "realAction"

    .prologue
    .line 760
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mCandProcessor:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->processKey(IZ)Z

    move-result v0

    return v0
.end method

.method public processLongPressKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 767
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mCandProcessor:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->processLongPressKey(I)Z

    move-result v0

    return v0
.end method

.method public resetAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 381
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 382
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 383
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 384
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(ZZ)V

    .line 385
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showLeftWindow(Z)V

    .line 386
    return-void
.end method

.method public setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V
    .locals 5
    .parameter "activeItem"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 835
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    .line 842
    const/4 v0, 0x0

    .line 843
    .local v0, isActiveHightLight:Z
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CAND_HIGHTLIGHT_ALWAYS:Z

    if-eqz v1, :cond_2

    .line 844
    const/4 v0, 0x1

    .line 848
    :cond_2
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$1;->$SwitchMap$com$samsung$inputmethod$candidate$SimeCandManager$CCShowType:[I

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 908
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 909
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    .line 911
    :cond_3
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteHighlight(ZZ)V

    goto :goto_0

    .line 855
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 856
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    .line 858
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v4, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteHighlight(ZZ)V

    .line 864
    :goto_1
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 865
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    goto :goto_0

    .line 860
    :cond_4
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    .line 862
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteHighlight(ZZ)V

    goto :goto_1

    .line 874
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 875
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    .line 879
    :goto_2
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 880
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    .line 884
    :goto_3
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->enableActiveHighlight(Z)V

    goto/16 :goto_0

    .line 877
    :cond_5
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    goto :goto_2

    .line 882
    :cond_6
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    goto :goto_3

    .line 891
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 892
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    .line 896
    :goto_4
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 897
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    goto/16 :goto_0

    .line 894
    :cond_7
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    goto :goto_4

    .line 899
    :cond_8
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    goto/16 :goto_0

    .line 916
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableActiveHighlight(Z)V

    goto/16 :goto_0

    .line 848
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setMoveHandlerShown(Z)V
    .locals 2
    .parameter "shown"

    .prologue
    .line 452
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 453
    .local v0, vis:I
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mMoveHandler:Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/floating/SimeMoveHandlerView;->setVisibility(I)V

    .line 454
    return-void

    .line 452
    .end local v0           #vis:I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setToolbarLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 208
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBAR_SUPPORT_ONEHAND:Z

    if-nez v3, :cond_0

    .line 231
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 213
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 214
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_samsungkeypad_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 215
    .local v0, isOneHandMode:I
    if-ne v7, v0, :cond_2

    .line 217
    const v3, 0x7f0202d3

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setBackgroundResource(I)V

    .line 225
    :goto_1
    if-ne v0, v7, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getOneHandMode()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    if-ne v3, v4, :cond_1

    .line 227
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 228
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f0a0032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 230
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 223
    :cond_2
    const v3, 0x7f020003

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public show(II)V
    .locals 7
    .parameter "locationX"
    .parameter "locationY"

    .prologue
    .line 1165
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_0

    .line 1183
    :goto_0
    return-void

    .line 1171
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 1172
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 1173
    .local v0, anchor:Landroid/graphics/Point;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1175
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x64

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1176
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1177
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x64

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1180
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x32

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method public showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V
    .locals 13
    .parameter "type"
    .parameter "enableActiveHighlight"

    .prologue
    const/4 v12, -0x1

    const/4 v11, -0x2

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 457
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonItemLayoutParameter()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CAND_HIGHTLIGHT_ALWAYS:Z

    if-eqz v5, :cond_4

    .line 464
    const/4 v2, 0x1

    .line 467
    .local v2, isActiveHighlight:Z
    :goto_0
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 471
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isNeedAdjustExpd()Z

    move-result v5

    if-nez v5, :cond_5

    .line 472
    invoke-virtual {p0, v8, v10}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(ZZ)V

    .line 475
    :cond_0
    :goto_1
    const/4 v0, 0x0

    .line 476
    .local v0, candSizeTemp:I
    const/4 v1, 0x0

    .line 488
    .local v1, disableTabbar:Z
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-ne v5, v6, :cond_2

    .line 490
    :cond_1
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mChnDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->get34SplCandidates()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v0

    .line 491
    if-lez v0, :cond_2

    .line 492
    const/4 v1, 0x1

    .line 496
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 497
    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeCandManager$1;->$SwitchMap$com$samsung$inputmethod$candidate$SimeCandManager$CCShowType:[I

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 526
    :cond_3
    :goto_2
    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeCandManager$1;->$SwitchMap$com$samsung$inputmethod$candidate$SimeCandManager$CCShowType:[I

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 735
    :goto_3
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_11

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v5, v6, :cond_11

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 737
    invoke-virtual {p0, v10}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setMoveHandlerShown(Z)V

    .line 741
    :goto_4
    return-void

    .line 466
    .end local v0           #candSizeTemp:I
    .end local v1           #disableTabbar:Z
    .end local v2           #isActiveHighlight:Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #isActiveHighlight:Z
    goto :goto_0

    .line 473
    :cond_5
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isNeedAdjustExpd()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 474
    invoke-virtual {p0, v10, v10}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(ZZ)V

    goto :goto_1

    .line 507
    .restart local v0       #candSizeTemp:I
    .restart local v1       #disableTabbar:Z
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteBoxMode()Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal_NoTabBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-eq v5, v6, :cond_7

    if-eqz v1, :cond_8

    .line 510
    :cond_7
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->setVisibility(I)V

    goto :goto_2

    .line 512
    :cond_8
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->setVisibility(I)V

    goto :goto_2

    .line 519
    :cond_9
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->setVisibility(I)V

    .line 520
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->isShown()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 521
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->setVisibility(I)V

    .line 522
    invoke-direct {p0, v10}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setCanContainerBg(Z)V

    goto :goto_2

    .line 530
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 531
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 533
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 534
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 536
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 537
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v12, v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->measure(II)V

    .line 538
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 539
    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-ne v5, v6, :cond_b

    .line 540
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 541
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isNeedAdjustExpd()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 542
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v5, v6, v7, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 557
    :goto_5
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    goto/16 :goto_3

    .line 546
    :cond_a
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v5, v6, v7, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    goto :goto_5

    .line 551
    :cond_b
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v10, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 552
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteHighlight(ZZ)V

    .line 553
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v5, v6, v7, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    goto :goto_5

    .line 561
    :pswitch_2
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 562
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 564
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 565
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 567
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 568
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v12, v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->measure(II)V

    .line 569
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 570
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWRListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setCandidateViewListener(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V

    .line 571
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 572
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->getHwRegCandInfo()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v5, v6, v7, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 574
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    goto/16 :goto_3

    .line 579
    :pswitch_3
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 580
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v12, v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->measure(II)V

    .line 581
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 582
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWRListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$HWRCVChoiceNotifier;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setCandidateViewListener(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V

    .line 583
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 584
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->getHwRegCandInfo()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v5, v6, v7, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 587
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 588
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 590
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 591
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v12, v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->measure(II)V

    .line 592
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 593
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 594
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 596
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    goto/16 :goto_3

    .line 601
    :pswitch_4
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mChnDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->get34SplCandidates()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v3

    .line 604
    .local v3, pinyinCandSize:I
    if-gtz v3, :cond_d

    .line 605
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 606
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 608
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 609
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 611
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 612
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 614
    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-ne v5, v6, :cond_c

    .line 615
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 616
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v5, v6, v7, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 620
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    .line 621
    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iput-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    goto/16 :goto_3

    .line 623
    :cond_c
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v10, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 624
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteHighlight(ZZ)V

    .line 625
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v5, v6, v7, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 628
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    .line 629
    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iput-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    goto/16 :goto_3

    .line 632
    :cond_d
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 633
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 634
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mPinYinListener:Lcom/samsung/inputmethod/candidate/SimeCandManager$PYCVChoiceNotifier;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setCandidateViewListener(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V

    .line 635
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 636
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mChnDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->get34SplCandidates()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v5, v6, v7, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 639
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 640
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 641
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 642
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 643
    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    if-ne v5, v6, :cond_e

    .line 644
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 645
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 655
    :goto_6
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    goto/16 :goto_3

    .line 649
    :cond_e
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v10, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 650
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteHighlight(ZZ)V

    .line 651
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    goto :goto_6

    .line 661
    .end local v3           #pinyinCandSize:I
    :pswitch_5
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mChnDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->get34SplCandidates()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v4

    .line 664
    .local v4, pinyinSize:I
    if-gtz v4, :cond_f

    .line 665
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 666
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 668
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 669
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 671
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 672
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 673
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableFootNoteDisplay(ZZ)V

    .line 674
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v5, v6, v7, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 678
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    .line 679
    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iput-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    goto/16 :goto_3

    .line 682
    :cond_f
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 683
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 684
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mChnDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->get34SplCandidates()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Z)V

    .line 686
    invoke-direct {p0, v10}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showLeftWindow(Z)V

    .line 688
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 689
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 691
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 692
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v12, v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->measure(II)V

    .line 693
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 694
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isNeedAdjustExpd()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 695
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v5, v6, v7, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    .line 703
    :goto_7
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    goto/16 :goto_3

    .line 699
    :cond_10
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v5, v6, v7, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V

    goto :goto_7

    .line 707
    .end local v4           #pinyinSize:I
    :pswitch_6
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 708
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 710
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 711
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 712
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 713
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 714
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 716
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    iput-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    goto/16 :goto_3

    .line 719
    :pswitch_7
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->setVisibility(I)V

    .line 720
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mVerticalItem:Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->reset()V

    .line 722
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 723
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 724
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5, v9}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setVisibility(I)V

    .line 725
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->reset()V

    .line 727
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->setVisibility(I)V

    .line 728
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    iput-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    .line 729
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setCanContainerBg(Z)V

    goto/16 :goto_3

    .line 739
    :cond_11
    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setMoveHandlerShown(Z)V

    goto/16 :goto_4

    .line 497
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 526
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public showExpand(II)V
    .locals 7
    .parameter "locationX"
    .parameter "locationY"

    .prologue
    .line 1186
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_0

    .line 1202
    :goto_0
    return-void

    .line 1189
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 1190
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 1194
    .local v0, anchor:Landroid/graphics/Point;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1196
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x32

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1199
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x32

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method public showExpandItem(ZZ)V
    .locals 12
    .parameter "show"
    .parameter "isCandChange"

    .prologue
    const/16 v11, 0x8

    const/4 v7, 0x4

    const/16 v10, 0x53

    const/4 v8, -0x2

    const/4 v9, 0x0

    .line 969
    if-eqz p1, :cond_f

    .line 971
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v1

    .line 972
    .local v1, candidateHeight:I
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 973
    .local v2, mParentLocation:[I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isShowOneItem()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 974
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZTopItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    invoke-virtual {v6, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getLocationInWindow([I)V

    .line 977
    :goto_0
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-nez v6, :cond_d

    .line 980
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isGridExpd()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 981
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandPYItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 982
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandPYItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    invoke-virtual {v6, v8, v8}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->measure(II)V

    .line 983
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandPYItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    invoke-virtual {v6, v9}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->setVisibility(I)V

    .line 989
    :goto_1
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    invoke-virtual {v6, v8, v8}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->measure(II)V

    .line 990
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    invoke-virtual {v6, v9}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->setVisibility(I)V

    .line 992
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCandFetchOver()Z

    move-result v6

    if-nez v6, :cond_0

    .line 993
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getAllCandidates()I

    .line 996
    :cond_0
    if-eqz p2, :cond_2

    .line 999
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isGridExpd()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1000
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandPYItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->showExpandContents()V

    .line 1001
    :cond_1
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isGridExpd()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->showExpandCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Z)V

    .line 1007
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1010
    :cond_3
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1011
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v5

    .line 1020
    .local v5, view:Landroid/view/View;
    :goto_2
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandPYItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandPYItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    neg-int v3, v6

    .line 1021
    .local v3, offsetY:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v5, v10, v9, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1091
    .end local v1           #candidateHeight:I
    .end local v2           #mParentLocation:[I
    .end local v3           #offsetY:I
    .end local v5           #view:Landroid/view/View;
    :cond_4
    :goto_3
    return-void

    .line 976
    .restart local v1       #candidateHeight:I
    .restart local v2       #mParentLocation:[I
    :cond_5
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getLocationInWindow([I)V

    goto/16 :goto_0

    .line 986
    :cond_6
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 1013
    :cond_7
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getCandManager()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1014
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getCandManager()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    .restart local v5       #view:Landroid/view/View;
    goto :goto_2

    .line 1022
    .end local v5           #view:Landroid/view/View;
    :cond_8
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v6, v7, :cond_b

    .line 1023
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1024
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getOneHandContainer()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    move-result-object v5

    .line 1033
    .restart local v5       #view:Landroid/view/View;
    :goto_4
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getOneHandMode()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    if-ne v6, v7, :cond_a

    .line 1034
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0032

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x0

    invoke-virtual {v6, v5, v10, v7, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3

    .line 1026
    .end local v5           #view:Landroid/view/View;
    :cond_9
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getCandManager()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1027
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getCandManager()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    .restart local v5       #view:Landroid/view/View;
    goto :goto_4

    .line 1036
    :cond_a
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v5, v10, v9, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3

    .line 1038
    .end local v5           #view:Landroid/view/View;
    :cond_b
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v6, v7, :cond_4

    .line 1040
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getDummyInputView()Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    move-result-object v4

    .line 1041
    .local v4, parentView:Landroid/view/View;
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1042
    move-object v5, v4

    .line 1051
    .restart local v5       #view:Landroid/view/View;
    :goto_5
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 1052
    .local v0, anchor:Landroid/graphics/Point;
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v8, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v5, v10, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_3

    .line 1044
    .end local v0           #anchor:Landroid/graphics/Point;
    .end local v5           #view:Landroid/view/View;
    :cond_c
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getCandManager()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1045
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getCandManager()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    .restart local v5       #view:Landroid/view/View;
    goto :goto_5

    .line 1058
    .end local v4           #parentView:Landroid/view/View;
    .end local v5           #view:Landroid/view/View;
    :cond_d
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCandFetchOver()Z

    move-result v6

    if-nez v6, :cond_e

    .line 1060
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getAllCandidates()I

    .line 1063
    :cond_e
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isGridExpd()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->showExpandCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Z)V

    .line 1064
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->update()V

    goto/16 :goto_3

    .line 1079
    .end local v1           #candidateHeight:I
    .end local v2           #mParentLocation:[I
    :cond_f
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->stopGetCandidate()I

    .line 1080
    if-eqz p2, :cond_10

    .line 1081
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    invoke-virtual {v6, v11}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->setVisibility(I)V

    .line 1082
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->reset()V

    .line 1083
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandPYItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    invoke-virtual {v6, v11}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->setVisibility(I)V

    .line 1084
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandPYItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->reset()V

    .line 1089
    :goto_6
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_3

    .line 1086
    :cond_10
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->setVisibility(I)V

    .line 1087
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mExpandItem:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;->setVisibility(I)V

    goto :goto_6
.end method

.method public showToolbarOrTabOnCandidates(Z)V
    .locals 5
    .parameter "inputViewShown"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 392
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 393
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 394
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mHZCommonItem:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    .line 396
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME$ImeState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->setVisibility(I)V

    .line 398
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->setVisibility(I)V

    .line 401
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->OnlyTabBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 403
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    .line 433
    :goto_0
    return-void

    .line 405
    :cond_1
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->OnlyToolBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 406
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 411
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->enableToolbarOrTab()Z

    move-result v1

    if-nez v1, :cond_5

    .line 412
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->isKeyGuardScreen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 414
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->setVisibility(I)V

    goto :goto_0

    .line 417
    :cond_4
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->setVisibility(I)V

    goto :goto_0

    .line 420
    :cond_5
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->isKeyGuardScreen()Z

    move-result v1

    if-nez v1, :cond_6

    .line 421
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->setVisibility(I)V

    .line 422
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    invoke-virtual {v1, v4}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->setVisibility(I)V

    .line 423
    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setCanContainerBg(Z)V

    .line 424
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->OnlyToolBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 425
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 427
    :cond_6
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mToolBarContainer:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->setVisibility(I)V

    .line 428
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    invoke-virtual {v1, v4}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->setVisibility(I)V

    .line 429
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->OnlyTabBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mShowType:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    .line 430
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mTabInputModeContainer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandManager;->mActiveCCItem:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method
