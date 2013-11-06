.class public Lcom/android/internal/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ListMenuItemView$Injector;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItemView"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsParentThemeDeviceDefault:Z

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mMenuType:I

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    sget-object v2, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 70
    const/4 v2, -0x1

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 72
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 74
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 80
    .local v1, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101042c

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 81
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 82
    iput-boolean v4, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIsParentThemeDeviceDefault:Z

    .line 85
    :cond_0
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertCheckBox()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 283
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIsParentThemeDeviceDefault:Z

    if-eqz v1, :cond_0

    .line 284
    const v1, 0x1090118

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView$Injector;->insertCheckBox(Lcom/android/internal/view/menu/ListMenuItemView;Landroid/widget/CheckBox;)Z

    move-result v1

    if-eqz v1, :cond_miui_0

    :goto_miui_0
    return-void

    :cond_miui_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    goto :goto_miui_0

    :cond_0
    const v1, 0x1090097

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    goto :goto_0
.end method

.method private insertIconView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 258
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090098

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 260
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 261
    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 266
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIsParentThemeDeviceDefault:Z

    if-eqz v1, :cond_0

    .line 267
    const v1, 0x109011a

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-static {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView$Injector;->insertRadioButton(Lcom/android/internal/view/menu/ListMenuItemView;Landroid/widget/RadioButton;)Z

    move-result v1

    if-eqz v1, :cond_miui_0

    :goto_miui_0
    return-void

    :cond_miui_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    goto :goto_miui_0

    :cond_0
    const v1, 0x109009a

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    goto :goto_0
.end method


# virtual methods
.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 2
    .parameter "itemData"
    .parameter "menuType"

    .prologue
    const/4 v1, 0x0

    .line 107
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 108
    iput p2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mMenuType:I

    .line 110
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFingerHoveredInAppWidget(Z)V

    .line 113
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 115
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 116
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 118
    return-void

    .line 110
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 95
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 98
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 103
    :cond_0
    const v0, 0x102039e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 104
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 238
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_0

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 241
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 242
    .local v0, iconLp:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 244
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIsParentThemeDeviceDefault:Z

    if-eqz v2, :cond_1

    .line 245
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 253
    .end local v0           #iconLp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 254
    return-void

    .line 248
    .restart local v0       #iconLp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 6
    .parameter "checkable"

    .prologue
    const/16 v3, 0x8

    .line 139
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v4, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 149
    iget-object v4, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_2

    .line 150
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 153
    .local v0, compoundButton:Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 162
    .local v2, otherCompoundButton:Landroid/widget/CompoundButton;
    :goto_1
    if-eqz p1, :cond_7

    .line 163
    iget-object v4, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/android/internal/view/menu/ListMenuItemView$Injector;->checkTextColor(Lcom/android/internal/view/menu/ListMenuItemView;Landroid/widget/TextView;Z)V

    .line 165
    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 166
    .local v1, newVisibility:I
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_3

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 172
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 155
    .end local v0           #compoundButton:Landroid/widget/CompoundButton;
    .end local v1           #newVisibility:I
    .end local v2           #otherCompoundButton:Landroid/widget/CompoundButton;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_5

    .line 156
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 158
    :cond_5
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 159
    .restart local v0       #compoundButton:Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .restart local v2       #otherCompoundButton:Landroid/widget/CompoundButton;
    goto :goto_1

    :cond_6
    move v1, v3

    .line 165
    goto :goto_2

    .line 175
    :cond_7
    iget-object v4, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_8
    iget-object v4, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .local v0, compoundButton:Landroid/widget/CompoundButton;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-static {p0, v1, p1}, Lcom/android/internal/view/menu/ListMenuItemView$Injector;->checkTextColor(Lcom/android/internal/view/menu/ListMenuItemView;Landroid/widget/TextView;Z)V

    return-void

    .end local v0           #compoundButton:Landroid/widget/CompoundButton;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .restart local v0       #compoundButton:Landroid/widget/CompoundButton;
    goto :goto_0
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .parameter "forceShow"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 122
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "icon"

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 213
    .local v0, showIcon:Z
    :goto_0
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_3

    .line 234
    .end local p1
    :cond_1
    :goto_1
    return-void

    .end local v0           #showIcon:Z
    .restart local p1
    :cond_2
    move v0, v1

    .line 212
    goto :goto_0

    .line 217
    .restart local v0       #showIcon:Z
    :cond_3
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_1

    .line 221
    :cond_4
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_5

    .line 222
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertIconView()V

    .line 225
    :cond_5
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_8

    .line 226
    :cond_6
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .end local p1
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 226
    .restart local p1
    :cond_7
    const/4 p1, 0x0

    goto :goto_2

    .line 232
    :cond_8
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setShortcut(ZC)V
    .locals 3
    .parameter "showShortcut"
    .parameter "shortcutKey"

    .prologue
    .line 199
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 202
    .local v0, newVisibility:I
    :goto_0
    if-nez v0, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 207
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :cond_1
    return-void

    .line 199
    .end local v0           #newVisibility:I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    const/16 v1, 0x8

    .line 125
    if-eqz p1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    return v0
.end method
