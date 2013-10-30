.class public Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;
.super Landroid/app/Dialog;
.source "SimeLineStyleDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;,
        Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;
    }
.end annotation


# static fields
.field public static mInitialLine:I

.field public static mLineColor:I


# instance fields
.field private mListener:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x7

    sput v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->mInitialLine:I

    .line 68
    const/high16 v0, -0x1

    sput v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->mLineColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;II)V
    .locals 0
    .parameter "context"
    .parameter "listener"
    .parameter "initialLine"
    .parameter "color"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 206
    iput-object p2, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->mListener:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;

    .line 207
    sput p3, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->mInitialLine:I

    .line 208
    sput p4, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->mLineColor:I

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;)Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->mListener:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->dismiss()V

    .line 216
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, -0x1

    .line 219
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 220
    new-instance v3, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$1;-><init>(Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;)V

    .line 227
    .local v3, l:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 228
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 229
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0xa

    sput v5, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->CENTER_X:I

    .line 230
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x2

    sput v5, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->CENTER_Y:I

    .line 231
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 232
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0xa

    sput v5, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->CENTER_Y:I

    .line 235
    :cond_0
    new-instance v5, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->mRootView:Landroid/view/View;

    .line 236
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->mRootView:Landroid/view/View;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    sget v7, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->CENTER_X:I

    mul-int/lit8 v7, v7, 0x2

    sget v8, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->CENTER_Y:I

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    new-instance v2, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->mLineColor:I

    invoke-direct {v2, v5, v3, v6}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;I)V

    .line 239
    .local v2, drawView:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->mRootView:Landroid/view/View;

    check-cast v5, Landroid/widget/ScrollView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 243
    .local v4, lineLayout:Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 244
    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 245
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->mRootView:Landroid/view/View;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    sget v7, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->CENTER_Y:I

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v9, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 249
    .local v0, cancelButton:Landroid/widget/Button;
    const/high16 v5, 0x104

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 250
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v9, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->setContentView(Landroid/view/View;)V

    .line 255
    const v5, 0x7f0b00bc

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->setTitle(I)V

    .line 256
    return-void
.end method
