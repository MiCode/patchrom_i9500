.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
.super Ljava/lang/Object;
.source "SimeSkbToogleKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToggleState"
.end annotation


# instance fields
.field public mIdAndFlags:I

.field public mKeyCode:I

.field public mKeyExtraHlIcon:Landroid/graphics/drawable/Drawable;

.field public mKeyExtraIcon:Landroid/graphics/drawable/Drawable;

.field public mKeyHlIcon:Landroid/graphics/drawable/Drawable;

.field public mKeyIcon:Landroid/graphics/drawable/Drawable;

.field public mKeyIconPopup:Landroid/graphics/drawable/Drawable;

.field public mKeyLPIconPopup:Landroid/graphics/drawable/Drawable;

.field public mKeyLabel:Ljava/lang/String;

.field public mKeyLongLabel:Ljava/lang/String;

.field public mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

.field public mNextState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

.field final synthetic this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setStateFlags(ZZZ)V
    .locals 2
    .parameter "repeat"
    .parameter "balloon"
    .parameter "disable"

    .prologue
    .line 366
    if-eqz p1, :cond_0

    .line 367
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    .line 372
    :goto_0
    if-eqz p2, :cond_1

    .line 373
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    .line 378
    :goto_1
    if-eqz p3, :cond_2

    .line 379
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    .line 383
    :goto_2
    return-void

    .line 369
    :cond_0
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    goto :goto_0

    .line 375
    :cond_1
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    goto :goto_1

    .line 381
    :cond_2
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    const v1, -0x40000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    goto :goto_2
.end method

.method public setStateId(I)V
    .locals 2
    .parameter "stateId"

    .prologue
    .line 362
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    .line 363
    return-void
.end method
