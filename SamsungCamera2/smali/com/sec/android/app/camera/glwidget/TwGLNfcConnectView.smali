.class public Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLNfcConnectView.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final FULL_SCREEN_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FULL_SCREEN_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NFC_CONNECTING_CANCEL_BTN_FONT_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NFC_CONNECTING_CANCEL_BTN_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NFC_CONNECTING_CANCEL_BTN_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NFC_CONNECTING_CANCEL_BTN_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NFC_CONNECTING_CANCEL_BTN_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NFC_CONNECTING_IMAGE_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NFC_CONNECTING_IMAGE_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NFC_CONNECTING_IMAGE_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NFC_CONNECTING_IMAGE_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NFC_CONNECTING_MESSAGE_FONT_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NFC_CONNECTING_MESSAGE_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NFC_CONNECTING_MESSAGE_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NFC_CONNECTING_MESSAGE_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NFC_CONNECTING_MESSAGE_Y:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwGLNfcConnectView"


# instance fields
.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mImage:Lcom/sec/android/glview/TwGLImage;

.field private mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f080314

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_WIDTH:I

    .line 40
    const v0, 0x7f080315

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_HEIGHT:I

    .line 42
    const v0, 0x7f0804d5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_X:I

    .line 43
    const v0, 0x7f0804d6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_Y:I

    .line 44
    const v0, 0x7f0804d7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_WIDTH:I

    .line 45
    const v0, 0x7f0804d8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_HEIGHT:I

    .line 47
    const v0, 0x7f0804d9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_X:I

    .line 48
    const v0, 0x7f0804da

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_Y:I

    .line 49
    const v0, 0x7f0804db

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_WIDTH:I

    .line 50
    const v0, 0x7f0804dc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_HEIGHT:I

    .line 51
    const v0, 0x7f090016

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_FONT_SIZE:I

    .line 53
    const v0, 0x7f0804dd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_X:I

    .line 54
    const v0, 0x7f0804de

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_Y:I

    .line 55
    const v0, 0x7f0804df

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_WIDTH:I

    .line 56
    const v0, 0x7f0804e0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_HEIGHT:I

    .line 57
    const v0, 0x7f090017

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_FONT_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 11
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    const v10, 0x7f020056

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v9, 0xd7

    .line 65
    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 67
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v2

    move v2, v7

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020463

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 70
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_HEIGHT:I

    int-to-float v5, v5

    const v7, 0x7f02006f

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mImage:Lcom/sec/android/glview/TwGLImage;

    .line 78
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0a0194

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mText:Lcom/sec/android/glview/TwGLText;

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v8, v8}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 86
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_Y:I

    int-to-float v3, v3

    const v4, 0x7f020055

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_HEIGHT:I

    move v5, v10

    move v6, v10

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f0a018e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_FONT_SIZE:I

    int-to-float v2, v2

    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 102
    return-void
.end method


# virtual methods
.method public hideNfcConnectView()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "TwGLNfcConnectView"

    const-string v1, "hideNfcConnectView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 112
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->resetNfcConnectView()V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showWifiConnectionDialog()V

    .line 154
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 3
    .parameter "arg0"

    .prologue
    .line 137
    const-string v0, "TwGLNfcConnectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_0

    .line 140
    const-string v0, "TwGLNfcConnectView"

    const-string v1, "mButton onClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->resetNfcConnectView()V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showWifiConnectionDialog()V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 144
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 121
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 128
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 159
    return-void
.end method

.method public resetNfcConnectView()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "TwGLNfcConnectView"

    const-string v1, "resetNfcConnectView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setEnableDirectConnect(Z)V

    .line 118
    return-void
.end method

.method public showNfcConnectView()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "TwGLNfcConnectView"

    const-string v1, "showNfcConnectView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 107
    return-void
.end method
