.class public Lcom/kikin/theme/DefaultThemeDetector;
.super Ljava/lang/Object;
.source "DefaultThemeDetector.java"

# interfaces
.implements Lcom/kikin/theme/ThemeDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionBarTheme(Landroid/view/View;)Lcom/kikin/theme/ThemeDetector$KikinTheme;
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x0

    .line 9
    sget-object v3, Lcom/kikin/theme/ThemeDetector$KikinTheme;->DARK:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    .line 12
    .local v3, ret:Lcom/kikin/theme/ThemeDetector$KikinTheme;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Lcom/android/internal/R$styleable;->ActionMode:[I

    const v7, 0x1010394

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 15
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    .line 16
    .local v2, hasBackgroundDrawableRes:Z
    if-eqz v2, :cond_0

    .line 17
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 19
    .local v1, backgroundDrawableRes:I
    const v4, 0x1080221

    if-ne v1, v4, :cond_1

    sget-object v3, Lcom/kikin/theme/ThemeDetector$KikinTheme;->DARK:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    .line 24
    .end local v1           #backgroundDrawableRes:I
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    return-object v3

    .line 19
    .restart local v1       #backgroundDrawableRes:I
    :cond_1
    sget-object v3, Lcom/kikin/theme/ThemeDetector$KikinTheme;->LIGHT:Lcom/kikin/theme/ThemeDetector$KikinTheme;

    goto :goto_0
.end method
