.class public Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;
.super Landroid/app/Dialog;
.source "SimeLineGradientStyleDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;,
        Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;
    }
.end annotation


# static fields
.field public static ENDREGION:I

.field public static MIDREGION:I

.field public static STARTREGION:I

.field public static mELineColor:I

.field public static mInitialLine:I

.field public static mMLineColor:I

.field public static mSLineColor:I

.field public static mSelectRegion:I


# instance fields
.field drawView:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;

.field endColorButton:Landroid/widget/Button;

.field private mListener:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;

.field private mRootView:Landroid/view/View;

.field middleColorButton:Landroid/widget/Button;

.field selButton:Landroid/widget/Button;

.field startColorButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x4

    sput v0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mInitialLine:I

    .line 78
    const/high16 v0, -0x1

    sput v0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mSLineColor:I

    .line 80
    const v0, -0xff0100

    sput v0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mMLineColor:I

    .line 82
    const v0, -0xffff01

    sput v0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mELineColor:I

    .line 84
    const/4 v0, 0x0

    sput v0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->STARTREGION:I

    .line 85
    const/4 v0, 0x1

    sput v0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->MIDREGION:I

    .line 86
    const/4 v0, 0x2

    sput v0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->ENDREGION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;IIII)V
    .locals 0
    .parameter "context"
    .parameter "listener"
    .parameter "initialLine"
    .parameter "scolor"
    .parameter "mcolor"
    .parameter "ecolor"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 202
    iput-object p2, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mListener:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;

    .line 203
    sput p3, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mInitialLine:I

    .line 204
    sput p4, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mSLineColor:I

    .line 205
    sput p5, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mMLineColor:I

    .line 206
    sput p6, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mELineColor:I

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;)Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mListener:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;

    return-object v0
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 4
    .parameter "color"

    .prologue
    .line 210
    sget v0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mSelectRegion:I

    sget v1, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->STARTREGION:I

    if-ne v0, v1, :cond_1

    .line 211
    sput p1, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mSLineColor:I

    .line 217
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->drawView:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->updateGradient()V

    .line 218
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mListener:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;

    sget v1, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mSLineColor:I

    sget v2, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mMLineColor:I

    sget v3, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mELineColor:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;->lineGradientChanged(III)V

    .line 219
    return-void

    .line 212
    :cond_1
    sget v0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mSelectRegion:I

    sget v1, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->MIDREGION:I

    if-ne v0, v1, :cond_2

    .line 213
    sput p1, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mMLineColor:I

    goto :goto_0

    .line 214
    :cond_2
    sget v0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mSelectRegion:I

    sget v1, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->ENDREGION:I

    if-ne v0, v1, :cond_0

    .line 215
    sput p1, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mELineColor:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 226
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->startColorButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->startColorButton:Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->selButton:Landroid/widget/Button;

    .line 228
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mSLineColor:I

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;I)V

    .line 229
    .local v0, dlg:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->show()V

    .line 230
    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->setTitle(I)V

    .line 245
    .end local v0           #dlg:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->middleColorButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->middleColorButton:Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->selButton:Landroid/widget/Button;

    .line 233
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mMLineColor:I

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;I)V

    .line 234
    .restart local v0       #dlg:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->show()V

    .line 235
    const v1, 0x7f0b00be

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->setTitle(I)V

    goto :goto_0

    .line 236
    .end local v0           #dlg:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->endColorButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->endColorButton:Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->selButton:Landroid/widget/Button;

    .line 238
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mELineColor:I

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;I)V

    .line 239
    .restart local v0       #dlg:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->show()V

    .line 240
    const v1, 0x7f0b00bd

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->setTitle(I)V

    goto :goto_0

    .line 242
    .end local v0           #dlg:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mListener:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;

    sget v2, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mSLineColor:I

    sget v3, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mMLineColor:I

    sget v4, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mELineColor:I

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;->lineGradientChanged(III)V

    .line 243
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->dismiss()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, -0x2

    const/4 v8, -0x1

    .line 248
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 249
    new-instance v2, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$1;-><init>(Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;)V

    .line 255
    .local v2, l:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 256
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 257
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0xa

    sput v4, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_X:I

    .line 258
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0xa

    sput v4, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_Y:I

    .line 259
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 260
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x2

    sput v4, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_Y:I

    .line 263
    :cond_0
    new-instance v4, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mRootView:Landroid/view/View;

    .line 264
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mRootView:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    sget v6, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_X:I

    mul-int/lit8 v6, v6, 0x2

    sget v7, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_Y:I

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    new-instance v4, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mMLineColor:I

    invoke-direct {v4, v5, v2, v6, p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;ILcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;)V

    iput-object v4, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->drawView:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;

    .line 268
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mRootView:Landroid/view/View;

    check-cast v4, Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->drawView:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 273
    .local v3, lineLayout:Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 274
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 275
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mRootView:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    sget v6, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_Y:I

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v8, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 279
    .local v0, cancelButton:Landroid/widget/Button;
    const v4, 0x7f0b004a

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 280
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->setContentView(Landroid/view/View;)V

    .line 285
    const v4, 0x7f0b00c1

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->setTitle(I)V

    .line 286
    return-void
.end method
