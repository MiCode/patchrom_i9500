.class Landroid/widget/Editor$NewActionPopupWindow;
.super Landroid/widget/Editor$NewPinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewActionPopupWindow"
.end annotation


# static fields
.field private static final TW_NEW_POPUP_DIVIDER_LAYOUT:I = 0x109013d

.field private static final TW_NEW_POPUP_TEXT_LAYOUT:I = 0x109013f

.field private static final TW_POPUP_HORIZONTAL_SCROLL_LAYOUT:I = 0x109013e


# instance fields
.field private mActionBarHeight:I

.field private mClipboardTextView:Landroid/widget/TextView;

.field private mContentViewHeight:I

.field private mContentViewWidth:I

.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mDividerImageView1:Landroid/widget/ImageView;

.field private mDividerImageView2:Landroid/widget/ImageView;

.field private mDividerImageView3:Landroid/widget/ImageView;

.field private mDividerImageView4:Landroid/widget/ImageView;

.field private mDividerImageView5:Landroid/widget/ImageView;

.field private mDividerImageView6:Landroid/widget/ImageView;

.field private mHandlerHeight:I

.field private mPasteTextView:Landroid/widget/TextView;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mShareTextView:Landroid/widget/TextView;

.field private mStatusbarHeight:I

.field private mTranslateTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .prologue
    .line 3931
    iput-object p1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$NewPinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3931
    invoke-direct {p0, p1}, Landroid/widget/Editor$NewActionPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method protected createPopupWindow()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3964
    const-wide v2, 0x4051c00000000000L

    iget-object v4, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mItemWidth:I

    .line 3965
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextEditNewActionPopupBackGroundRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3966
    .local v0, bgRes:Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3967
    .local v1, bgResPadding:Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    .line 3968
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3969
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingWidth:I

    .line 3970
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingHeight:I

    .line 3971
    const/4 v1, 0x0

    .line 3976
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextEditNewActionPopupDividerRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mDividerWidth:I

    .line 3977
    iget v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mItemWidth:I

    mul-int/lit8 v2, v2, 0x4

    iget v3, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mDividerWidth:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthPortrait:I

    .line 3978
    iget v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mItemWidth:I

    mul-int/lit8 v2, v2, 0x6

    iget v3, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mDividerWidth:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthLandscape:I

    .line 3980
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3981
    iget-object v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3982
    iget-object v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3984
    return-void

    .line 3973
    :cond_0
    iput v6, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingWidth:I

    goto :goto_0
.end method

.method protected getNewActionPopupPosition([I)V
    .locals 29
    .parameter "position"

    .prologue
    .line 4218
    if-nez p1, :cond_0

    .line 4219
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 p1, v0

    .line 4222
    :cond_0
    const/4 v13, 0x1

    .line 4223
    .local v13, menuItemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->canCut()Z

    move-result v4

    .line 4224
    .local v4, canCut:Z
    if-eqz v4, :cond_1

    add-int/lit8 v13, v13, 0x1

    .line 4225
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->canCopy()Z

    move-result v3

    .line 4226
    .local v3, canCopy:Z
    if-eqz v3, :cond_2

    add-int/lit8 v13, v13, 0x1

    .line 4227
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->canPaste()Z

    move-result v5

    .line 4228
    .local v5, canPaste:Z
    if-eqz v5, :cond_3

    add-int/lit8 v13, v13, 0x1

    .line 4229
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "clipboardEx"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/sec/clipboard/ClipboardExManager;

    .line 4230
    .local v7, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v25

    if-eqz v25, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/text/Editable;

    move/from16 v25, v0

    if-eqz v25, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v25

    if-eqz v25, :cond_b

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v25

    if-lez v25, :cond_b

    const/4 v2, 0x1

    .line 4234
    .local v2, canClipboard:Z
    :goto_0
    if-eqz v2, :cond_4

    add-int/lit8 v13, v13, 0x1

    .line 4235
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->canTranslate()Z

    move-result v25

    if-eqz v25, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/widget/Editor;->mTranslateEnable:Z

    move/from16 v25, v0

    if-eqz v25, :cond_c

    const/4 v6, 0x1

    .line 4236
    .local v6, canTranslate:Z
    :goto_1
    if-eqz v6, :cond_5

    add-int/lit8 v13, v13, 0x1

    .line 4237
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/widget/Editor;->mShareEnable:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    add-int/lit8 v13, v13, 0x1

    .line 4239
    :cond_6
    const/4 v14, 0x0

    .line 4240
    .local v14, menuLimit:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 4241
    const/4 v14, 0x4

    .line 4246
    :goto_2
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v15, v0, [I

    .line 4247
    .local v15, screen:[I
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 4248
    .local v24, window:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4250
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    .line 4251
    .local v17, screenWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    .line 4252
    .local v16, screenHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v19

    .line 4253
    .local v19, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v18

    .line 4254
    .local v18, selEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v20

    .line 4255
    .local v20, startLine:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 4256
    .local v8, endLine:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v25

    const/16 v26, 0x1

    aget v26, v24, v26

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v26

    add-int v22, v25, v26

    .line 4257
    .local v22, startLineTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v25

    const/16 v26, 0x1

    aget v26, v24, v26

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v26

    add-int v21, v25, v26

    .line 4258
    .local v21, startLineBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v25

    const/16 v26, 0x1

    aget v26, v24, v26

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v26

    add-int v10, v25, v26

    .line 4259
    .local v10, endLineTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v25

    const/16 v26, 0x1

    aget v26, v24, v26

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v26

    add-int v9, v25, v26

    .line 4260
    .local v9, endLineBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v25

    const/16 v26, 0x0

    aget v26, v15, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    .line 4261
    .local v23, startX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v25

    const/16 v26, 0x0

    aget v26, v15, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v11, v0

    .line 4263
    .local v11, endX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/text/Layout;->getWidth()I

    move-result v12

    .line 4264
    .local v12, maxWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingHeight:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    .line 4266
    if-ge v13, v14, :cond_e

    .line 4267
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mDividerWidth:I

    move/from16 v25, v0

    add-int/lit8 v26, v13, -0x1

    mul-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mItemWidth:I

    move/from16 v26, v0

    mul-int v26, v26, v13

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingWidth:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    .line 4276
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v25

    if-gez v25, :cond_11

    .line 4277
    const/16 v25, 0x0

    sub-int v26, v11, v23

    div-int/lit8 v26, v26, 0x2

    add-int v26, v26, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    const/16 v27, 0x0

    aget v27, v15, v27

    const/16 v28, 0x0

    aget v28, v24, v28

    sub-int v27, v27, v28

    sub-int v26, v26, v27

    aput v26, p1, v25

    .line 4278
    const/16 v25, 0x0

    aget v25, p1, v25

    if-gez v25, :cond_10

    .line 4279
    const/16 v25, 0x0

    const/16 v26, 0x0

    aput v26, p1, v25

    .line 4308
    :cond_7
    :goto_4
    const/16 v25, 0x0

    aget v25, v24, v25

    const/16 v26, 0x0

    aget v26, v15, v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1a

    const/16 v25, 0x1

    aget v25, v24, v25

    const/16 v26, 0x1

    aget v26, v15, v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1a

    .line 4309
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v25, v0

    sub-int v25, v22, v25

    const/16 v26, 0x1

    aget v26, v15, v26

    const/16 v27, 0x1

    aget v27, v24, v27

    sub-int v26, v26, v27

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mActionBarHeight:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_19

    .line 4310
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v26, v0

    sub-int v26, v22, v26

    aput v26, p1, v25

    .line 4311
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v25

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v25

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v25

    if-eqz v25, :cond_8

    .line 4312
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Editor$SelectionModifierCursorController;->getStartHandleToTop()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 4313
    const/16 v25, 0x1

    aget v26, p1, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    aput v26, p1, v25

    .line 4342
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1e

    .line 4343
    if-gez v22, :cond_9

    const/16 v25, 0x1

    aget v25, p1, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mActionBarHeight:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    .line 4344
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v26, v0

    add-int v26, v26, v9

    aput v26, p1, v25

    .line 4346
    :cond_9
    const/16 v25, 0x1

    aget v25, p1, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    move/from16 v1, v16

    if-le v0, v1, :cond_a

    .line 4347
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v26, v0

    sub-int v26, v16, v26

    aput v26, p1, v25

    .line 4358
    :cond_a
    :goto_6
    return-void

    .line 4230
    .end local v2           #canClipboard:Z
    .end local v6           #canTranslate:Z
    .end local v8           #endLine:I
    .end local v9           #endLineBottom:I
    .end local v10           #endLineTop:I
    .end local v11           #endX:I
    .end local v12           #maxWidth:I
    .end local v14           #menuLimit:I
    .end local v15           #screen:[I
    .end local v16           #screenHeight:I
    .end local v17           #screenWidth:I
    .end local v18           #selEnd:I
    .end local v19           #selStart:I
    .end local v20           #startLine:I
    .end local v21           #startLineBottom:I
    .end local v22           #startLineTop:I
    .end local v23           #startX:I
    .end local v24           #window:[I
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4235
    .restart local v2       #canClipboard:Z
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 4243
    .restart local v6       #canTranslate:Z
    .restart local v14       #menuLimit:I
    :cond_d
    const/4 v14, 0x6

    goto/16 :goto_2

    .line 4269
    .restart local v8       #endLine:I
    .restart local v9       #endLineBottom:I
    .restart local v10       #endLineTop:I
    .restart local v11       #endX:I
    .restart local v12       #maxWidth:I
    .restart local v15       #screen:[I
    .restart local v16       #screenHeight:I
    .restart local v17       #screenWidth:I
    .restart local v18       #selEnd:I
    .restart local v19       #selStart:I
    .restart local v20       #startLine:I
    .restart local v21       #startLineBottom:I
    .restart local v22       #startLineTop:I
    .restart local v23       #startX:I
    .restart local v24       #window:[I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    .line 4270
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthPortrait:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    goto/16 :goto_3

    .line 4272
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthLandscape:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    goto/16 :goto_3

    .line 4280
    :cond_10
    const/16 v25, 0x0

    aget v25, p1, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_7

    .line 4281
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v26, v0

    sub-int v26, v17, v26

    aput v26, p1, v25

    goto/16 :goto_4

    .line 4283
    :cond_11
    const/16 v25, 0x0

    aget v25, v24, v25

    const/16 v26, 0x0

    aget v26, v15, v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    const/16 v25, 0x1

    aget v25, v24, v25

    const/16 v26, 0x1

    aget v26, v15, v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    move/from16 v0, v23

    move/from16 v1, v17

    if-gt v0, v1, :cond_12

    move/from16 v0, v17

    if-le v11, v0, :cond_15

    .line 4284
    :cond_12
    const/16 v25, 0x0

    sub-int v26, v11, v23

    div-int/lit8 v26, v26, 0x2

    add-int v26, v26, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    const/16 v27, 0x0

    aget v27, v15, v27

    const/16 v28, 0x0

    aget v28, v24, v28

    sub-int v27, v27, v28

    sub-int v26, v26, v27

    aput v26, p1, v25

    .line 4285
    const/16 v25, 0x0

    aget v25, p1, v25

    if-gez v25, :cond_13

    .line 4286
    const/16 v25, 0x0

    const/16 v26, 0x0

    aput v26, p1, v25

    goto/16 :goto_4

    .line 4287
    :cond_13
    const/16 v25, 0x0

    aget v25, p1, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_14

    .line 4288
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v26, v0

    sub-int v26, v17, v26

    aput v26, p1, v25

    goto/16 :goto_4

    .line 4289
    :cond_14
    const/16 v25, 0x0

    aget v25, p1, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v26, v0

    add-int v25, v25, v26

    const/16 v26, 0x0

    aget v26, v15, v26

    const/16 v27, 0x0

    aget v27, v24, v27

    sub-int v26, v26, v27

    add-int v25, v25, v26

    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_7

    .line 4290
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v26, v0

    sub-int v26, v17, v26

    const/16 v27, 0x0

    aget v27, v15, v27

    const/16 v28, 0x0

    aget v28, v24, v28

    sub-int v27, v27, v28

    sub-int v26, v26, v27

    aput v26, p1, v25

    goto/16 :goto_4

    .line 4292
    :cond_15
    move/from16 v0, v20

    if-eq v0, v8, :cond_17

    .line 4293
    const/16 v25, 0x0

    const/16 v26, 0x0

    aget v26, v24, v26

    div-int/lit8 v27, v12, 0x2

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    aput v26, p1, v25

    .line 4294
    const/16 v25, 0x0

    aget v25, p1, v25

    if-gez v25, :cond_16

    .line 4295
    const/16 v25, 0x0

    const/16 v26, 0x0

    aput v26, p1, v25

    goto/16 :goto_4

    .line 4296
    :cond_16
    const/16 v25, 0x0

    aget v25, p1, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    .line 4297
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v26, v0

    sub-int v26, v17, v26

    aput v26, p1, v25

    goto/16 :goto_4

    .line 4300
    :cond_17
    const/16 v25, 0x0

    sub-int v26, v11, v23

    div-int/lit8 v26, v26, 0x2

    add-int v26, v26, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    aput v26, p1, v25

    .line 4301
    const/16 v25, 0x0

    aget v25, p1, v25

    if-gez v25, :cond_18

    .line 4302
    const/16 v25, 0x0

    const/16 v26, 0x0

    aput v26, p1, v25

    goto/16 :goto_4

    .line 4303
    :cond_18
    const/16 v25, 0x0

    aget v25, p1, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_7

    .line 4304
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v26, v0

    sub-int v26, v17, v26

    aput v26, p1, v25

    goto/16 :goto_4

    .line 4317
    :cond_19
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v26, v0

    add-int v26, v26, v9

    aput v26, p1, v25

    goto/16 :goto_5

    .line 4319
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v25, v0

    sub-int v25, v22, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mActionBarHeight:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1b

    .line 4320
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v26, v0

    sub-int v26, v22, v26

    aput v26, p1, v25

    .line 4321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v25

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v25

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v25

    if-eqz v25, :cond_8

    .line 4322
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Editor$SelectionModifierCursorController;->getStartHandleToTop()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 4323
    const/16 v25, 0x1

    aget v26, p1, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    aput v26, p1, v25

    goto/16 :goto_5

    .line 4326
    :cond_1b
    move/from16 v0, v22

    if-eq v0, v10, :cond_1d

    .line 4327
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v25, v0

    add-int v25, v25, v21

    sub-int v25, v9, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1c

    .line 4328
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v26, v0

    add-int v26, v26, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v27, v0

    add-int v27, v27, v21

    sub-int v27, v9, v27

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    add-int v26, v26, v27

    aput v26, p1, v25

    .line 4330
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v25

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v25

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v25

    if-eqz v25, :cond_8

    .line 4331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Editor$SelectionModifierCursorController;->getStartHandleToTop()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 4332
    const/16 v25, 0x1

    aget v26, p1, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    aput v26, p1, v25

    goto/16 :goto_5

    .line 4336
    :cond_1c
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v26, v0

    add-int v26, v26, v9

    aput v26, p1, v25

    goto/16 :goto_5

    .line 4339
    :cond_1d
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v26, v0

    add-int v26, v26, v9

    aput v26, p1, v25

    goto/16 :goto_5

    .line 4350
    :cond_1e
    if-gez v22, :cond_1f

    const/16 v25, 0x1

    aget v25, p1, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1f

    .line 4351
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v26, v0

    add-int v26, v26, v9

    aput v26, p1, v25

    .line 4354
    :cond_1f
    const/16 v25, 0x1

    aget v25, p1, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    move/from16 v1, v16

    if-le v0, v1, :cond_a

    .line 4355
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v26, v0

    sub-int v26, v16, v26

    aput v26, p1, v25

    goto/16 :goto_6
.end method

.method protected getTextOffset()I
    .locals 2

    .prologue
    .line 4203
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected initContentView()V
    .locals 17

    .prologue
    .line 3988
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v1, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3991
    .local v1, dividerImageViewLayout:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 3994
    .local v9, inflater:Landroid/view/LayoutInflater;
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mItemWidth:I

    const/4 v14, -0x2

    invoke-direct {v11, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3996
    .local v11, textLayout:Landroid/view/ViewGroup$LayoutParams;
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3999
    .local v12, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4000
    .local v10, linearLayout:Landroid/widget/LinearLayout;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4001
    const/16 v13, 0x11

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 4002
    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 4003
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v13, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4005
    const v13, 0x109013e

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 4006
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4009
    const v13, 0x109013f

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    .line 4010
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4011
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    const v14, 0x104000d

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 4012
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4013
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    iget v14, v14, Landroid/widget/TextView;->mTextEditNewActionPopupSelectAllRes:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4014
    .local v2, drawable1:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v2, v15, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4015
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4019
    const v13, 0x109013d

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    .line 4020
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    invoke-virtual {v13, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4021
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4025
    const v13, 0x109013f

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    .line 4026
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4027
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    const v14, 0x1040003

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 4028
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4029
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    iget v14, v14, Landroid/widget/TextView;->mTextEditNewActionPopupCutRes:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4030
    .local v3, drawable2:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v3, v15, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4031
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4034
    const v13, 0x109013d

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    .line 4035
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    invoke-virtual {v13, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4036
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4039
    const v13, 0x109013f

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    .line 4040
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4041
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    const v14, 0x1040001

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 4042
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4043
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    iget v14, v14, Landroid/widget/TextView;->mTextEditNewActionPopupCopyRes:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4044
    .local v4, drawable3:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v4, v15, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4045
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4048
    const v13, 0x109013d

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    .line 4049
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    invoke-virtual {v13, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4050
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4053
    const v13, 0x109013f

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 4054
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4055
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v14, 0x104000b

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 4056
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4057
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    iget v14, v14, Landroid/widget/TextView;->mTextEditNewActionPopupPasteRes:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4058
    .local v5, drawable4:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v5, v15, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4059
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4062
    const v13, 0x109013d

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    .line 4063
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    invoke-virtual {v13, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4064
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4067
    const v13, 0x109013f

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    .line 4068
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4069
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    const v14, 0x1040018

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 4070
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4071
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    iget v14, v14, Landroid/widget/TextView;->mTextEditNewActionPopupClipboardRes:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 4072
    .local v6, drawable5:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v6, v15, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4073
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4076
    const v13, 0x109013d

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    .line 4077
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    invoke-virtual {v13, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4078
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4081
    const v13, 0x109013f

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    .line 4082
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4083
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    const v14, 0x10408a8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 4084
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4085
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    iget v14, v14, Landroid/widget/TextView;->mTextEditNewActionPopupTranslateRes:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 4086
    .local v7, drawable6:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v7, v15, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4087
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4090
    const v13, 0x109013d

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    .line 4091
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    invoke-virtual {v13, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4092
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4095
    const v13, 0x109013f

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    .line 4096
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4097
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    const v14, 0x10406e3

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 4098
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4099
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    iget v14, v14, Landroid/widget/TextView;->mTextEditNewActionPopupShareRes:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 4100
    .local v8, drawable7:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v8, v15, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4101
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4103
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v13, v14}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 4104
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 4150
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 4151
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x102001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4171
    :cond_0
    :goto_0
    return-void

    .line 4152
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4153
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4154
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->hide()V

    goto :goto_0

    .line 4155
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4156
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4157
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->hide()V

    goto :goto_0

    .line 4158
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4159
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4160
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->hide()V

    goto :goto_0

    .line 4161
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_5

    .line 4162
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x102027a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4163
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->hide()V

    goto :goto_0

    .line 4164
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canTranslate()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTranslateEnable:Z

    if-eqz v0, :cond_6

    .line 4165
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x102027b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4166
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->hide()V

    goto/16 :goto_0

    .line 4167
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v0, :cond_0

    .line 4168
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x102027c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4169
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->hide()V

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 4175
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4198
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 4177
    :pswitch_0
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4178
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4179
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->removeAllNewActionPopupHider()V

    goto :goto_0

    .line 4185
    :pswitch_1
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4186
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4187
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4188
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    #getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$100(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    #getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$100(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v0, :cond_0

    .line 4189
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    #getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$100(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$NewPinnedPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4190
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    #getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$100(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->hideNewActionPopupWindowAfterDelay()V

    goto/16 :goto_0

    .line 4175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setHeight()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4208
    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Landroid/R$styleable;->ActionBar:[I

    const v4, 0x10102ce

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4210
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mActionBarHeight:I

    .line 4212
    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    .line 4213
    const/high16 v1, 0x41c8

    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    .line 4214
    return-void
.end method

.method public show()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 4108
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    instance-of v10, v10, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v10, :cond_0

    .line 4146
    :goto_0
    return-void

    .line 4112
    :cond_0
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->canCut()Z

    move-result v2

    .line 4113
    .local v2, canCut:Z
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    .line 4114
    .local v1, canCopy:Z
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->canPaste()Z

    move-result v3

    .line 4115
    .local v3, canPaste:Z
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->canTranslate()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v10, v10, Landroid/widget/Editor;->mTranslateEnable:Z

    if-eqz v10, :cond_2

    move v5, v7

    .line 4116
    .local v5, canTranslate:Z
    :goto_1
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z
    invoke-static {v10}, Landroid/widget/Editor;->access$2700(Landroid/widget/Editor;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v4, v7

    .line 4117
    .local v4, canSuggest:Z
    :goto_2
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "clipboardEx"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/sec/clipboard/ClipboardExManager;

    .line 4118
    .local v6, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v10}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    instance-of v10, v10, Landroid/text/Editable;

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v10

    if-eqz v10, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v10

    if-lez v10, :cond_4

    move v0, v7

    .line 4123
    .local v0, canClipboard:Z
    :goto_3
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4125
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4126
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    move v7, v8

    :goto_5
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4128
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    move v7, v8

    :goto_6
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4129
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    move v7, v8

    :goto_7
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4131
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    if-eqz v3, :cond_9

    move v7, v8

    :goto_8
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4132
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_a

    move v7, v8

    :goto_9
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4134
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    move v7, v8

    :goto_a
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4135
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    move v7, v8

    :goto_b
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4137
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    if-eqz v5, :cond_d

    move v7, v8

    :goto_c
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4138
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_e

    move v7, v8

    :goto_d
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4140
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v7, :cond_f

    move v7, v8

    :goto_e
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4141
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v10, v10, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v10, :cond_1

    move v9, v8

    :cond_1
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 4143
    iget-object v7, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7, v8, v8}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 4145
    invoke-super {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->show()V

    goto/16 :goto_0

    .end local v0           #canClipboard:Z
    .end local v4           #canSuggest:Z
    .end local v5           #canTranslate:Z
    .end local v6           #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_2
    move v5, v8

    .line 4115
    goto/16 :goto_1

    .restart local v5       #canTranslate:Z
    :cond_3
    move v4, v8

    .line 4116
    goto/16 :goto_2

    .restart local v4       #canSuggest:Z
    .restart local v6       #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_4
    move v0, v8

    .line 4118
    goto :goto_3

    .restart local v0       #canClipboard:Z
    :cond_5
    move v7, v9

    .line 4125
    goto :goto_4

    :cond_6
    move v7, v9

    .line 4126
    goto :goto_5

    :cond_7
    move v7, v9

    .line 4128
    goto :goto_6

    :cond_8
    move v7, v9

    .line 4129
    goto :goto_7

    :cond_9
    move v7, v9

    .line 4131
    goto :goto_8

    :cond_a
    move v7, v9

    .line 4132
    goto :goto_9

    :cond_b
    move v7, v9

    .line 4134
    goto :goto_a

    :cond_c
    move v7, v9

    .line 4135
    goto :goto_b

    :cond_d
    move v7, v9

    .line 4137
    goto :goto_c

    :cond_e
    move v7, v9

    .line 4138
    goto :goto_d

    :cond_f
    move v7, v9

    .line 4140
    goto :goto_e
.end method
