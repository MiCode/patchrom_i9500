.class Landroid/webkit/WebViewClassic$SelectActionPopupWindow;
.super Landroid/widget/PopupWindow;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectActionPopupWindow"
.end annotation


# static fields
.field private static final TW_NEW_POPUP_DIVIDER_LAYOUT:I = 0x109013d

.field private static final TW_NEW_POPUP_TEXT_LAYOUT:I = 0x109013f

.field private static final TW_POPUP_HORIZONTAL_SCROLL_LAYOUT:I = 0x109013e


# instance fields
.field private final ITEM_WIDTH:I

.field private final PADDING_WIDTH:I

.field private final POPUP_WIDTH:I

.field private final WEBSEARCH_ITEM_WIDTH:I

.field private mClipboardTextView:Landroid/widget/TextView;

.field private mContentView:Landroid/view/ViewGroup;

.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mDividerImageView1:Landroid/widget/ImageView;

.field private mDividerImageView2:Landroid/widget/ImageView;

.field private mDividerImageView3:Landroid/widget/ImageView;

.field private mDividerImageView4:Landroid/widget/ImageView;

.field private mDividerImageView5:Landroid/widget/ImageView;

.field private mDividerImageView6:Landroid/widget/ImageView;

.field private mDividerImageView7:Landroid/widget/ImageView;

.field private mDividerImageView8:Landroid/widget/ImageView;

.field private mFindTextView:Landroid/widget/TextView;

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mMenuCount:I

.field private mPasteTextView:Landroid/widget/TextView;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mShareTextView:Landroid/widget/TextView;

.field private mTranslateTextView:Landroid/widget/TextView;

.field private mWebSearchTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 24

    .prologue
    .line 1329
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    .line 1330
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    const v22, 0x10102c8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1294
    const/16 v20, 0x4c

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->ITEM_WIDTH:I

    .line 1295
    const/16 v20, 0x52

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->WEBSEARCH_ITEM_WIDTH:I

    .line 1296
    const/16 v20, 0x13c

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->POPUP_WIDTH:I

    .line 1297
    const/16 v20, 0x24

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->PADDING_WIDTH:I

    .line 1331
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->setClippingEnabled(Z)V

    .line 1332
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/WebViewClassic;->mSelectPopupRsrcBG:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1333
    const/16 v20, 0x3ea

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->setWindowLayoutType(I)V

    .line 1335
    const/16 v20, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->setHeight(I)V

    .line 1337
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1340
    .local v4, dividerImageViewLayout:Landroid/view/ViewGroup$LayoutParams;
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v20

    const-string v21, "layout_inflater"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 1343
    .local v14, inflater:Landroid/view/LayoutInflater;
    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x4c

    const/16 v21, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1346
    .local v17, textLayout:Landroid/view/ViewGroup$LayoutParams;
    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x52

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1349
    .local v18, textLayout2:Landroid/view/ViewGroup$LayoutParams;
    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1352
    .local v19, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1355
    .local v16, matchParent:Landroid/view/ViewGroup$LayoutParams;
    new-instance v15, Landroid/widget/LinearLayout;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1356
    .local v15, linearLayout:Landroid/widget/LinearLayout;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1357
    const/16 v20, 0x11

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1358
    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1360
    const v20, 0x109013e

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1365
    const v20, 0x109013f

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x104000d

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 1370
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/WebViewClassic;->mSelectPopupRsrcSelectAll:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1371
    .local v5, drawable1:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1375
    const v20, 0x109013d

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1380
    const v20, 0x109013f

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x1040003

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 1385
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/WebViewClassic;->mSelectPopupRsrcCut:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1386
    .local v6, drawable2:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1390
    const v20, 0x109013d

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1395
    const v20, 0x109013f

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x1040001

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 1400
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/WebViewClassic;->mSelectPopupRsrcCopy:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1401
    .local v7, drawable3:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1405
    const v20, 0x109013d

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1410
    const v20, 0x109013f

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x104000b

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 1415
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/WebViewClassic;->mSelectPopupRsrcPaste:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1416
    .local v8, drawable4:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1420
    const v20, 0x109013d

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1425
    const v20, 0x109013f

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x1040018

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 1430
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/WebViewClassic;->mSelectPopupRsrcClipboard:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1431
    .local v9, drawable5:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1435
    const v20, 0x109013d

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1440
    const v20, 0x109013f

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x10406e3

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 1445
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/WebViewClassic;->mSelectPopupRsrcShare:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1446
    .local v10, drawable6:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1450
    const v20, 0x109013d

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1455
    const v20, 0x109013f

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x10408a8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 1460
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/WebViewClassic;->mSelectPopupRsrcTranslate:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 1461
    .local v13, drawable9:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1465
    const v20, 0x109013d

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView7:Landroid/widget/ImageView;

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView7:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView7:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1470
    const v20, 0x109013f

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x10406e4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 1475
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/WebViewClassic;->mSelectPopupRsrcFind:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1476
    .local v12, drawable8:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1480
    const v20, 0x109013d

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView8:Landroid/widget/ImageView;

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView8:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView8:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1485
    const v20, 0x109013f

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x10406e5

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 1490
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/webkit/WebViewClassic;->mSelectPopupRsrcWebSearch:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1491
    .local v11, drawable7:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->setContentView(Landroid/view/View;)V

    .line 1496
    return-void
.end method

.method static synthetic access$1800(Landroid/webkit/WebViewClassic$SelectActionPopupWindow;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1293
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/webkit/WebViewClassic$SelectActionPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1293
    iget v0, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    return v0
.end method


# virtual methods
.method getSelectPopupHeight()I
    .locals 2

    .prologue
    .line 1771
    iget-object v1, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v1

    .line 1772
    .local v0, density:I
    mul-int/lit8 v1, v0, 0x47

    return v1
.end method

.method getSelectPopupWidth()I
    .locals 4

    .prologue
    .line 1749
    const/4 v1, 0x0

    .line 1750
    .local v1, width:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v2

    .line 1752
    .local v0, density:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1753
    iget v2, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 1754
    iget v2, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    mul-int/lit8 v2, v2, 0x4c

    add-int/lit8 v2, v2, 0x24

    mul-int v1, v0, v2

    .line 1761
    :goto_0
    return v1

    .line 1756
    :cond_0
    mul-int/lit16 v1, v0, 0x13c

    goto :goto_0

    .line 1759
    :cond_1
    iget v2, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x5

    iget v3, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    mul-int/lit8 v3, v3, 0x4c

    add-int/2addr v2, v3

    mul-int v1, v0, v2

    goto :goto_0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 1745
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->dismiss()V

    .line 1746
    return-void
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x8000

    .line 1729
    iget-object v1, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1730
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->measure(II)V

    .line 1735
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "view"

    .prologue
    const/16 v12, 0x7530

    const/16 v10, 0x7d0

    const/high16 v11, 0x1000

    .line 1629
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    if-ne p1, v9, :cond_1

    .line 1630
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->selectAllSec()Z

    .line 1632
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->hideSelectActionWindow()V

    .line 1633
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v10, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v10, v10, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v11, 0xb9

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x1f4

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1726
    :cond_0
    :goto_0
    return-void

    .line 1635
    :cond_1
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-ne p1, v9, :cond_2

    .line 1636
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->cutSelectionSec()V

    .line 1637
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->hide()V

    goto :goto_0

    .line 1638
    :cond_2
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-ne p1, v9, :cond_3

    .line 1639
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->copySelectionSec()Z

    .line 1640
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 1641
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->hide()V

    goto :goto_0

    .line 1642
    :cond_3
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v9, :cond_4

    .line 1643
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 1644
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->hide()V

    goto :goto_0

    .line 1645
    :cond_4
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-ne p1, v9, :cond_5

    .line 1646
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->pasteFromClipboardEx()V

    .line 1647
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->hide()V

    goto :goto_0

    .line 1648
    :cond_5
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    if-ne p1, v9, :cond_9

    .line 1649
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    .line 1650
    const-string/jumbo v9, "webview"

    const-string v10, "getSelectionSec() is null."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1653
    :cond_6
    new-instance v6, Ljava/lang/StringBuffer;

    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1654
    .local v6, selection:Ljava/lang/StringBuffer;
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-le v9, v12, :cond_7

    .line 1655
    const-string/jumbo v9, "webview"

    const-string/jumbo v10, "selected string is too long. Cut it"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1658
    :cond_7
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v9}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1659
    .local v4, packageName:Ljava/lang/String;
    const-string v9, "com.android.email"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1660
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1661
    .local v7, send:Landroid/content/Intent;
    const-string/jumbo v9, "text/plain"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1662
    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1663
    const-string/jumbo v9, "theme"

    const/4 v10, 0x2

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1665
    :try_start_0
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x10405d0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 1666
    .local v2, i:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1667
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v9}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1678
    .end local v2           #i:Landroid/content/Intent;
    .end local v7           #send:Landroid/content/Intent;
    :goto_1
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v9}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebView;->clearSelection()V

    .line 1679
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->hide()V

    goto/16 :goto_0

    .line 1669
    .restart local v7       #send:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1671
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1676
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    .end local v7           #send:Landroid/content/Intent;
    :cond_8
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 1681
    .end local v4           #packageName:Ljava/lang/String;
    .end local v6           #selection:Ljava/lang/StringBuffer;
    :cond_9
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    if-ne p1, v9, :cond_d

    .line 1682
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_a

    .line 1683
    const-string/jumbo v9, "webview"

    const-string v10, "mWebView.getSelectionSec() is null."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1687
    :cond_a
    new-instance v8, Ljava/lang/StringBuffer;

    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1688
    .local v8, stringBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-le v9, v10, :cond_b

    .line 1689
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1692
    :cond_b
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.WEB_SEARCH"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1693
    .restart local v2       #i:Landroid/content/Intent;
    const-string v9, "query"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1694
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v9}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebView;->clearSelection()V

    .line 1695
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->hide()V

    .line 1697
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v9}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v9

    instance-of v9, v9, Landroid/app/Activity;

    if-nez v9, :cond_c

    .line 1698
    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1700
    :cond_c
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v9}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1702
    .end local v2           #i:Landroid/content/Intent;
    .end local v8           #stringBuffer:Ljava/lang/StringBuffer;
    :cond_d
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    if-ne p1, v9, :cond_e

    .line 1703
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v5

    .line 1704
    .local v5, sel:Ljava/lang/String;
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 1705
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->hide()V

    .line 1706
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Landroid/webkit/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 1708
    .end local v5           #sel:Ljava/lang/String;
    :cond_e
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    if-ne p1, v9, :cond_0

    .line 1710
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1711
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1712
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1713
    const-string v9, "mode"

    const-string/jumbo v10, "viewer"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1714
    const-string/jumbo v9, "source_text"

    iget-object v10, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1716
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1717
    iget-object v9, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 1718
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->hide()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1720
    .end local v3           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 1721
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v1, 0xba

    .line 1609
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1624
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1611
    :pswitch_0
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$1900()Landroid/webkit/WebViewClassic$SelectActionPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1613
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1619
    :pswitch_1
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$1900()Landroid/webkit/WebViewClassic$SelectActionPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1620
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->hideSelectActionWindowAfterDelay()V

    goto :goto_0

    .line 1609
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method popupAnimationEffect(I)V
    .locals 5
    .parameter "itemCount"

    .prologue
    .line 1581
    move v0, p1

    .line 1582
    .local v0, menuItemCount:I
    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 1584
    iget-object v2, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v3, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-int v3, v3

    mul-int/lit16 v3, v3, 0xc8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 1585
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/webkit/WebViewClassic$SelectActionPopupWindow$1;

    invoke-direct {v2, p0}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow$1;-><init>(Landroid/webkit/WebViewClassic$SelectActionPopupWindow;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1603
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1605
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method setSelectPopupWidth()V
    .locals 4

    .prologue
    .line 1499
    const/4 v1, 0x0

    .line 1500
    .local v1, width:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v2

    .line 1502
    .local v0, density:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1503
    iget v2, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 1504
    iget v2, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    mul-int/lit8 v2, v2, 0x4c

    add-int/lit8 v2, v2, 0x24

    mul-int v1, v0, v2

    .line 1508
    :goto_0
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->setWidth(I)V

    .line 1512
    :goto_1
    return-void

    .line 1506
    :cond_0
    mul-int/lit16 v1, v0, 0x13c

    goto :goto_0

    .line 1510
    :cond_1
    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->setWidth(I)V

    goto :goto_1
.end method

.method public show(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 1738
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1739
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1741
    :cond_0
    invoke-virtual {p0, p1, p2, v2, v2}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->update(IIII)V

    .line 1742
    return-void
.end method

.method updateMenuVisibility()V
    .locals 14

    .prologue
    .line 1515
    iget-object v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v12}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v7

    .line 1516
    .local v7, isEditable:Z
    const/4 v8, 0x0

    .line 1517
    .local v8, isTypePassword:Z
    const/4 v11, 0x0

    .line 1518
    .local v11, variation:I
    iget-object v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v12, v12, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v12, :cond_0

    if-eqz v7, :cond_0

    .line 1519
    iget-object v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v12, v12, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v12}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getInputType()I

    move-result v12

    and-int/lit16 v11, v12, 0xff0

    .line 1520
    const/16 v12, 0xe0

    if-ne v11, v12, :cond_0

    .line 1521
    const/4 v8, 0x1

    .line 1525
    :cond_0
    const/4 v5, 0x0

    .line 1526
    .local v5, canTranslate:Z
    iget-object v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v12}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1527
    .local v10, pm:Landroid/content/pm/PackageManager;
    iget-object v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v12}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1528
    .local v9, packageName:Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.sec.android.app.translator.TRANSLATE"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1529
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_1

    const-string/jumbo v12, "sec_container_"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1530
    :cond_1
    const/4 v5, 0x0

    .line 1535
    :goto_0
    iget-object v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v12}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v12

    const-string v13, "clipboard"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ClipboardManager;

    move-object v6, v12

    check-cast v6, Landroid/content/ClipboardManager;

    .line 1536
    .local v6, cm:Landroid/content/ClipboardManager;
    if-eqz v7, :cond_9

    invoke-virtual {v6}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v4, 0x1

    .line 1537
    .local v4, canPaste:Z
    :goto_1
    if-nez v7, :cond_a

    const/4 v3, 0x1

    .line 1538
    .local v3, canFind:Z
    :goto_2
    if-eqz v7, :cond_b

    if-nez v8, :cond_b

    const/4 v2, 0x1

    .line 1539
    .local v2, canCut:Z
    :goto_3
    if-nez v8, :cond_c

    const/4 v1, 0x1

    .line 1541
    .local v1, canCopy:Z
    :goto_4
    const/4 v12, 0x1

    iput v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    .line 1542
    if-eqz v2, :cond_2

    iget v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    .line 1543
    :cond_2
    if-eqz v1, :cond_3

    iget v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    add-int/lit8 v12, v12, 0x3

    iput v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    .line 1544
    :cond_3
    if-eqz v4, :cond_4

    iget v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    .line 1545
    :cond_4
    if-eqz v7, :cond_5

    iget v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    .line 1546
    :cond_5
    if-eqz v3, :cond_6

    iget v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    .line 1547
    :cond_6
    if-eqz v5, :cond_7

    iget v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mMenuCount:I

    .line 1550
    :cond_7
    iget-object v12, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1552
    iget-object v13, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    if-eqz v2, :cond_d

    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1553
    iget-object v13, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_e

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1555
    iget-object v13, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    if-eqz v1, :cond_f

    const/4 v12, 0x0

    :goto_7
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1556
    iget-object v13, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1558
    iget-object v13, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    if-eqz v4, :cond_11

    const/4 v12, 0x0

    :goto_9
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1559
    iget-object v13, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_12

    const/4 v12, 0x0

    :goto_a
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1561
    iget-object v13, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    if-eqz v7, :cond_13

    const/4 v12, 0x0

    :goto_b
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1562
    iget-object v13, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_14

    const/4 v12, 0x0

    :goto_c
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1564
    iget-object v13, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    if-eqz v1, :cond_15

    const/4 v12, 0x0

    :goto_d
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1565
    iget-object v13, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_16

    const/4 v12, 0x0

    :goto_e
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1567
    iget-object v13, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    if-eqz v5, :cond_17

    const/4 v12, 0x0

    :goto_f
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1568
    iget-object v13, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_18

    const/4 v12, 0x0

    :goto_10
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1570
    iget-object v13, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView7:Landroid/widget/ImageView;

    if-eqz v3, :cond_19

    const/4 v12, 0x0

    :goto_11
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1571
    iget-object v13, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mFindTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_1a

    const/4 v12, 0x0

    :goto_12
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1573
    iget-object v13, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mDividerImageView8:Landroid/widget/ImageView;

    if-eqz v1, :cond_1b

    const/4 v12, 0x0

    :goto_13
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1574
    iget-object v13, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1c

    const/4 v12, 0x0

    :goto_14
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1577
    return-void

    .line 1532
    .end local v1           #canCopy:Z
    .end local v2           #canCut:Z
    .end local v3           #canFind:Z
    .end local v4           #canPaste:Z
    .end local v6           #cm:Landroid/content/ClipboardManager;
    :cond_8
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1536
    .restart local v6       #cm:Landroid/content/ClipboardManager;
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1537
    .restart local v4       #canPaste:Z
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1538
    .restart local v3       #canFind:Z
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1539
    .restart local v2       #canCut:Z
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 1552
    .restart local v1       #canCopy:Z
    :cond_d
    const/16 v12, 0x8

    goto/16 :goto_5

    .line 1553
    :cond_e
    const/16 v12, 0x8

    goto/16 :goto_6

    .line 1555
    :cond_f
    const/16 v12, 0x8

    goto/16 :goto_7

    .line 1556
    :cond_10
    const/16 v12, 0x8

    goto/16 :goto_8

    .line 1558
    :cond_11
    const/16 v12, 0x8

    goto :goto_9

    .line 1559
    :cond_12
    const/16 v12, 0x8

    goto :goto_a

    .line 1561
    :cond_13
    const/16 v12, 0x8

    goto :goto_b

    .line 1562
    :cond_14
    const/16 v12, 0x8

    goto :goto_c

    .line 1564
    :cond_15
    const/16 v12, 0x8

    goto :goto_d

    .line 1565
    :cond_16
    const/16 v12, 0x8

    goto :goto_e

    .line 1567
    :cond_17
    const/16 v12, 0x8

    goto :goto_f

    .line 1568
    :cond_18
    const/16 v12, 0x8

    goto :goto_10

    .line 1570
    :cond_19
    const/16 v12, 0x8

    goto :goto_11

    .line 1571
    :cond_1a
    const/16 v12, 0x8

    goto :goto_12

    .line 1573
    :cond_1b
    const/16 v12, 0x8

    goto :goto_13

    .line 1574
    :cond_1c
    const/16 v12, 0x8

    goto :goto_14
.end method
