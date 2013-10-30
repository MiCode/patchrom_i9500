.class public Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
.super Landroid/app/Dialog;
.source "SimeColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;,
        Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private mInitialColor:I

.field private mListener:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;I)V
    .locals 0
    .parameter "context"
    .parameter "listener"
    .parameter "initialColor"

    .prologue
    .line 240
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 242
    iput-object p2, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->mListener:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;

    .line 243
    iput p3, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->mInitialColor:I

    .line 244
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;)Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->mListener:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->dismiss()V

    .line 251
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 255
    new-instance v3, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$1;-><init>(Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;)V

    .line 262
    .local v3, l:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 263
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 264
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0xa

    sput v5, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->CENTER_X:I

    .line 265
    sget v5, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->CENTER_X:I

    sput v5, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->CENTER_Y:I

    .line 266
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 267
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0xa

    sput v5, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->CENTER_X:I

    .line 268
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x2

    sput v5, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->CENTER_Y:I

    .line 271
    :cond_0
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 272
    .local v4, lineLayout:Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 273
    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 275
    new-instance v2, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->mInitialColor:I

    invoke-direct {v2, v5, v3, v6}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;I)V

    .line 276
    .local v2, drawView:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    sget v6, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->CENTER_X:I

    mul-int/lit8 v6, v6, 0x2

    sget v7, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->CENTER_Y:I

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 279
    .local v0, cancelButton:Landroid/widget/Button;
    const/high16 v5, 0x104

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 280
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->setContentView(Landroid/view/View;)V

    .line 284
    const v5, 0x7f0b00bb

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->setTitle(I)V

    .line 286
    return-void
.end method
