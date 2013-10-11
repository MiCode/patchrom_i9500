.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupViewContainer;,
        Landroid/widget/PopupWindow$OnDismissListener;,
        Landroid/widget/PopupWindow$Injector;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I = null

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsMultiWindowPopup:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mStatusBarHeight:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 256
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 177
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 95
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 96
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 97
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 98
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 99
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 102
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 103
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 118
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 119
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 120
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 127
    const/16 v7, 0x3e8

    iput v7, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 130
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 133
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 134
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    .line 135
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    .line 138
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 145
    new-instance v7, Landroid/widget/PopupWindow$1;

    invoke-direct {v7, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 195
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 196
    const-string v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 198
    sget-object v7, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 202
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 204
    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 205
    .local v2, animStyle:I
    const v7, 0x10301ef

    if-ne v2, v7, :cond_0

    const/4 v2, -0x1

    .end local v2           #animStyle:I
    :cond_0
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 217
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_2

    .line 218
    iget-object v3, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 221
    .local v3, background:Landroid/graphics/drawable/StateListDrawable;
    sget-object v7, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    .line 225
    .local v1, aboveAnchorStateIndex:I
    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    .line 226
    .local v5, count:I
    const/4 v4, -0x1

    .line 227
    .local v4, belowAnchorStateIndex:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 228
    if-eq v6, v1, :cond_3

    .line 229
    move v4, v6

    .line 236
    :cond_1
    const/4 v7, -0x1

    if-eq v1, v7, :cond_4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    .line 237
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 238
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 245
    .end local v1           #aboveAnchorStateIndex:I
    .end local v3           #background:Landroid/graphics/drawable/StateListDrawable;
    .end local v4           #belowAnchorStateIndex:I
    .end local v5           #count:I
    .end local v6           #i:I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 246
    return-void

    .line 227
    .restart local v1       #aboveAnchorStateIndex:I
    .restart local v3       #background:Landroid/graphics/drawable/StateListDrawable;
    .restart local v4       #belowAnchorStateIndex:I
    .restart local v5       #count:I
    .restart local v6       #i:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 240
    :cond_4
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 241
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "contentView"

    .prologue
    const/4 v0, 0x0

    .line 268
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .parameter "contentView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 299
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4
    .parameter "contentView"
    .parameter "width"
    .parameter "height"
    .parameter "focusable"

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 95
    iput v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 96
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 97
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 98
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 99
    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 102
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 103
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 118
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 119
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 127
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 130
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 133
    iput v1, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 134
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    .line 135
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    .line 138
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 145
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 314
    if-eqz p1, :cond_0

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 316
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 318
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 319
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 320
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 321
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 322
    return-void
.end method

.method static synthetic access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/PopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/PopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/PopupWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$700()[I
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 1163
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1164
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1165
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, 0x10301e9

    .line 1171
    :goto_0
    return v0

    .line 1165
    :cond_0
    const v0, 0x10301e8

    goto :goto_0

    .line 1169
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1171
    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3
    .parameter "curFlags"

    .prologue
    const/high16 v2, 0x2

    .line 1119
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1127
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1128
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1130
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_9

    .line 1131
    or-int/lit8 p1, p1, 0x8

    .line 1132
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1133
    or-int/2addr p1, v2

    .line 1138
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1139
    or-int/lit8 p1, p1, 0x10

    .line 1141
    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1142
    const/high16 v0, 0x4

    or-int/2addr p1, v0

    .line 1144
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 1145
    or-int/lit16 p1, p1, 0x200

    .line 1147
    :cond_4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1148
    const/high16 v0, 0x80

    or-int/2addr p1, v0

    .line 1150
    :cond_5
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 1151
    or-int/lit16 p1, p1, 0x100

    .line 1153
    :cond_6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    .line 1154
    const/high16 v0, 0x1

    or-int/2addr p1, v0

    .line 1156
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    .line 1157
    or-int/lit8 p1, p1, 0x20

    .line 1159
    :cond_8
    return p1

    .line 1135
    :cond_9
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1136
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 9
    .parameter "token"

    .prologue
    .line 1065
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1070
    .local v5, p:Landroid/view/WindowManager$LayoutParams;
    const v7, 0x800033

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1071
    iget v7, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v7, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1072
    iget v7, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v7, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1073
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    .line 1074
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1078
    :goto_0
    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v7}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v7

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1079
    iget v7, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1080
    iput-object p1, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1081
    iget v7, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1082
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PopupWindow:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1086
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1087
    .local v3, dm:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1089
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 1090
    .local v2, context:Landroid/content/Context;
    instance-of v7, v2, Landroid/app/Activity;

    if-nez v7, :cond_0

    instance-of v7, v2, Landroid/content/ContextWrapper;

    if-eqz v7, :cond_0

    .line 1091
    check-cast v2, Landroid/content/ContextWrapper;

    .end local v2           #context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 1093
    .restart local v2       #context:Landroid/content/Context;
    :cond_0
    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    instance-of v7, v2, Landroid/app/Activity;

    if-eqz v7, :cond_3

    move-object v0, v2

    .line 1096
    check-cast v0, Landroid/app/Activity;

    .line 1097
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v6

    .line 1099
    .local v6, windowMode:I
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/high16 v7, 0x200

    and-int/2addr v7, v6

    if-eqz v7, :cond_1

    iget v7, p0, Landroid/widget/PopupWindow;->mWidth:I

    iget v8, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_1

    .line 1102
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1115
    .end local v0           #activity:Landroid/app/Activity;
    .end local v6           #windowMode:I
    :cond_1
    :goto_1
    return-object v5

    .line 1076
    .end local v2           #context:Landroid/content/Context;
    .end local v3           #dm:Landroid/util/DisplayMetrics;
    :cond_2
    const/4 v7, -0x3

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0

    .line 1104
    .restart local v2       #context:Landroid/content/Context;
    .restart local v3       #dm:Landroid/util/DisplayMetrics;
    :cond_3
    iget-boolean v7, p0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_1

    .line 1105
    iget-object v7, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1106
    .local v1, anchor:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1107
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1108
    .local v4, outRect:Landroid/graphics/Rect;
    invoke-virtual {v1, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1109
    iget v7, p0, Landroid/widget/PopupWindow;->mWidth:I

    iget v8, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_1

    .line 1110
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 30
    .parameter "anchor"
    .parameter "p"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1191
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1192
    .local v4, anchorHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    add-int v27, v27, p3

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    add-int v27, v27, v4

    add-int v27, v27, p4

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1196
    const/4 v10, 0x0

    .line 1198
    .local v10, onTop:Z
    const v27, 0x800033

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1201
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1202
    .local v7, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    add-int v27, v27, v4

    add-int v16, v27, p4

    .line 1206
    .local v16, screenY:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    .line 1209
    .local v14, root:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 1210
    .local v23, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/16 v24, 0x0

    .line 1212
    .local v24, wlp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v24, v23

    .line 1213
    check-cast v24, Landroid/view/WindowManager$LayoutParams;

    .line 1216
    :cond_0
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 1217
    .local v20, visibleDisplayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1219
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1

    .line 1220
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1224
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v27, v0

    add-int v27, v27, v16

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v28, v0

    add-int v27, v27, v28

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v28

    sub-int v27, v27, v28

    if-lez v27, :cond_4

    .line 1229
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    .line 1230
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v17

    .line 1231
    .local v17, scrollX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v18

    .line 1232
    .local v18, scrollY:I
    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v27, v0

    add-int v27, v27, v17

    add-int v27, v27, p3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v28, v0

    add-int v28, v28, v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v29

    add-int v28, v28, v29

    add-int v28, v28, p4

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1234
    .local v12, r:Landroid/graphics/Rect;
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v12, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 1239
    .end local v12           #r:Landroid/graphics/Rect;
    .end local v17           #scrollX:I
    .end local v18           #scrollY:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    add-int v27, v27, p3

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v28

    add-int v27, v27, v28

    add-int v27, v27, p4

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1246
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    sub-int v27, v27, v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v28

    sub-int v27, v27, v28

    sub-int v27, v27, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    sub-int v28, v28, p4

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    const/4 v10, 0x1

    .line 1248
    :goto_0
    if-eqz v10, :cond_f

    .line 1249
    const v27, 0x800053

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1250
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    sub-int v27, v27, v28

    add-int v27, v27, p4

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1257
    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v28, v0

    add-int v27, v27, v28

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v28

    sub-int v27, v27, v28

    if-lez v27, :cond_4

    .line 1258
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v28, v0

    add-int v27, v27, v28

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v28

    sub-int v6, v27, v28

    .line 1259
    .local v6, diff:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    sub-int v27, v27, v6

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1260
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    if-gtz v27, :cond_4

    .line 1261
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1267
    .end local v6           #diff:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 1268
    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v8, v27, v28

    .line 1270
    .local v8, displayFrameWidth:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v28, v0

    add-int v13, v27, v28

    .line 1271
    .local v13, right:I
    if-le v13, v8, :cond_5

    .line 1272
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    sub-int v28, v13, v8

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1274
    :cond_5
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 1275
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1276
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1279
    :cond_6
    if-eqz v10, :cond_10

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    add-int v27, v27, p4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v28, v0

    sub-int v11, v27, v28

    .line 1287
    .local v11, popupTop:I
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v11, v0, :cond_7

    .line 1288
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v27, v0

    add-int v27, v27, v11

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1290
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v27, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1298
    .end local v11           #popupTop:I
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    if-eqz v24, :cond_d

    .line 1301
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v22, v27, v28

    .line 1302
    .local v22, visibleDisplayFrameWidth:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v21, v27, v28

    .line 1304
    .local v21, visibleDisplayFrameHeight:I
    const/16 v25, 0x0

    .line 1305
    .local v25, xRootInScreen:I
    const/16 v26, 0x0

    .line 1306
    .local v26, yRootInScreen:I
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v15, v0, [I

    .line 1308
    .local v15, rootLocation:[I
    invoke-virtual {v14, v15}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1310
    const/4 v13, 0x0

    .line 1311
    const/4 v9, 0x0

    .line 1312
    .local v9, left:I
    const/16 v19, 0x0

    .line 1313
    .local v19, top:I
    const/4 v5, 0x0

    .line 1316
    .local v5, bottom:I
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x3

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    .line 1317
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v25, v0

    .line 1330
    :cond_8
    :goto_3
    const/16 v27, 0x0

    aget v27, v15, v27

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v13, v27, p3

    .line 1331
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v13, v0, :cond_9

    .line 1333
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1336
    :cond_9
    const/16 v27, 0x0

    aget v27, v15, v27

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v28, v0

    add-int v9, v27, v28

    .line 1337
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v9, v0, :cond_a

    .line 1338
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v28, v28, v9

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1342
    :cond_a
    const/16 v27, 0x33

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v28

    add-int v27, v27, v28

    add-int v27, v27, p4

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1345
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x30

    const/16 v28, 0x30

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    .line 1346
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v26, v0

    .line 1353
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 1354
    const/16 v27, 0x1

    aget v27, v15, v27

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v5, v27, p4

    .line 1355
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v5, v0, :cond_c

    .line 1356
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v28, v5, v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1357
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1360
    :cond_c
    const/16 v27, 0x1

    aget v27, v15, v27

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v28, v0

    add-int v19, v27, v28

    .line 1361
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    .line 1362
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v28, v28, v19

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1379
    .end local v5           #bottom:I
    .end local v8           #displayFrameWidth:I
    .end local v9           #left:I
    .end local v13           #right:I
    .end local v15           #rootLocation:[I
    .end local v19           #top:I
    .end local v21           #visibleDisplayFrameHeight:I
    .end local v22           #visibleDisplayFrameWidth:I
    .end local v25           #xRootInScreen:I
    .end local v26           #yRootInScreen:I
    :cond_d
    :goto_5
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v27, v0

    const/high16 v28, 0x1000

    or-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1381
    return v10

    .line 1246
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1252
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v28

    add-int v27, v27, v28

    add-int v27, v27, p4

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_1

    .line 1294
    .restart local v8       #displayFrameWidth:I
    .restart local v13       #right:I
    :cond_10
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v27, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_2

    .line 1318
    .restart local v5       #bottom:I
    .restart local v9       #left:I
    .restart local v15       #rootLocation:[I
    .restart local v19       #top:I
    .restart local v21       #visibleDisplayFrameHeight:I
    .restart local v22       #visibleDisplayFrameWidth:I
    .restart local v25       #xRootInScreen:I
    .restart local v26       #yRootInScreen:I
    :cond_11
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x5

    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    .line 1319
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v28, v0

    sub-int v25, v27, v28

    goto/16 :goto_3

    .line 1320
    :cond_12
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x1

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 1321
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v27, v0

    sub-int v27, v22, v27

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v28, v0

    add-int v25, v27, v28

    goto/16 :goto_3

    .line 1347
    :cond_13
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x50

    const/16 v28, 0x50

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    .line 1348
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v28, v0

    sub-int v26, v27, v28

    goto/16 :goto_4

    .line 1349
    :cond_14
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x10

    const/16 v28, 0x10

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 1350
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v27, v0

    sub-int v27, v21, v27

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v28, v0

    add-int v26, v27, v28

    goto/16 :goto_4

    .line 1365
    :cond_15
    const/16 v27, 0x1

    aget v27, v15, v27

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v5, v27, p4

    .line 1366
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v5, v0, :cond_16

    .line 1367
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v28, v5, v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1370
    :cond_16
    const/16 v27, 0x1

    aget v27, v15, v27

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v28, v0

    add-int v19, v27, v28

    .line 1371
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    .line 1372
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v28, v28, v19

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_5
.end method

.method private getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "anchor"
    .parameter "outRect"

    .prologue
    const/4 v9, 0x0

    .line 1386
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1424
    :cond_0
    :goto_0
    return-void

    .line 1390
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1391
    .local v0, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1393
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 1395
    .local v2, root:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1396
    .local v5, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, 0x0

    .line 1398
    .local v6, wlp:Landroid/view/WindowManager$LayoutParams;
    instance-of v7, v5, Landroid/view/WindowManager$LayoutParams;

    if-eqz v7, :cond_2

    move-object v6, v5

    .line 1399
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1402
    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1403
    .local v4, visibleDisplayFrame:Landroid/graphics/Rect;
    iput v9, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 1405
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1406
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1408
    if-eqz v6, :cond_3

    .line 1409
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v7, v8

    .line 1410
    .local v3, systemUiVisibility:I
    and-int/lit8 v7, v3, 0x4

    if-nez v7, :cond_3

    .line 1411
    iget-object v7, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 1414
    .end local v3           #systemUiVisibility:I
    :cond_3
    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 1415
    iget v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 1416
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 1417
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 1419
    iget-boolean v7, p0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    if-eqz v7, :cond_4

    .line 1420
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1423
    :cond_4
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 1038
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1041
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1042
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1043
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1044
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 9
    .parameter "p"

    .prologue
    .line 997
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    .line 998
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1002
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 1003
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1004
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 1005
    .local v0, height:I
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 1007
    const/4 v0, -0x2

    .line 1012
    :cond_2
    new-instance v3, Landroid/widget/PopupWindow$PopupViewContainer;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/PopupWindow$PopupViewContainer;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1013
    .local v3, popupViewContainer:Landroid/widget/PopupWindow$PopupViewContainer;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v2, listParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v5, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    iget-object v6, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v4, v5, v6, v7, v8}, Landroid/widget/PopupWindow$Injector;->updateBackground(Landroid/view/View;ZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .end local v0           #height:I
    .end local v1           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #listParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #popupViewContainer:Landroid/widget/PopupWindow$PopupViewContainer;
    :goto_0
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 1025
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    .line 1026
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1027
    return-void

    .line 1021
    :cond_3
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    goto :goto_0

    .line 1023
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private registerForScrollChanged(Landroid/view/View;II)V
    .locals 2
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1877
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1879
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1880
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1881
    .local v0, vto:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1882
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1885
    :cond_0
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1886
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 1887
    return-void
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3

    .prologue
    .line 1047
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1048
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1049
    .local v0, anchor:Landroid/view/View;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    .line 1050
    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1053
    .end local v0           #anchor:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setMultiWindowPopup(Z)V
    .locals 0
    .parameter "isMultiWindowPopup"

    .prologue
    .line 1427
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    .line 1428
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .prologue
    .line 1864
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1865
    .local v1, anchorRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1866
    .local v0, anchor:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1867
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anchor:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 1869
    .restart local v0       #anchor:Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 1870
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1871
    .local v2, vto:Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1873
    .end local v2           #vto:Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1874
    return-void
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .locals 25
    .parameter "anchor"
    .parameter "updateLocation"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "updateDimension"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1739
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1851
    :cond_0
    :goto_0
    return-void

    .line 1743
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1744
    .local v13, oldAnchor:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v4, v0, :cond_c

    :cond_2
    const/4 v12, 0x1

    .line 1745
    .local v12, needsUpdate:Z
    :goto_1
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_3

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v4, :cond_d

    .line 1746
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 1753
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager$LayoutParams;

    .line 1755
    .local v14, p:Landroid/view/WindowManager$LayoutParams;
    if-eqz p5, :cond_5

    .line 1756
    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_e

    .line 1757
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 1761
    :goto_3
    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_f

    .line 1762
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 1768
    :cond_5
    :goto_4
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v22, v0

    .line 1769
    .local v22, x:I
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v23, v0

    .line 1771
    .local v23, y:I
    if-eqz p2, :cond_10

    .line 1772
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v14, v2, v3}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1778
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v4, :cond_a

    .line 1779
    const/16 v24, 0x0

    .line 1780
    .local v24, yRootInScreen:I
    const/16 v17, 0x0

    .line 1781
    .local v17, top:I
    const/4 v10, 0x0

    .line 1783
    .local v10, bottom:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v15

    .line 1785
    .local v15, root:Landroid/view/View;
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 1786
    .local v16, rootLocation:[I
    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1788
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 1789
    .local v20, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/16 v21, 0x0

    .line 1791
    .local v21, wlp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v20

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_6

    move-object/from16 v21, v20

    .line 1792
    check-cast v21, Landroid/view/WindowManager$LayoutParams;

    .line 1795
    :cond_6
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 1796
    .local v18, visibleDisplayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1798
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v19, v4, v5

    .line 1800
    .local v19, visibleDisplayFrameHeight:I
    if-eqz v21, :cond_a

    .line 1801
    move-object/from16 v0, v21

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x30

    const/16 v5, 0x30

    if-ne v4, v5, :cond_11

    .line 1802
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v24, v0

    .line 1809
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    if-eqz v4, :cond_13

    .line 1810
    const/4 v4, 0x1

    aget v4, v16, v4

    iget v5, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v4, v5

    add-int v4, v4, p7

    add-int v10, v4, p4

    .line 1811
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-le v10, v4, :cond_8

    .line 1812
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v4

    sub-int p7, p7, v4

    .line 1813
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1816
    :cond_8
    const/4 v4, 0x1

    aget v4, v16, v4

    iget v5, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v17, v4, v5

    .line 1817
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v17

    if-ge v0, v4, :cond_9

    .line 1818
    iget v4, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v5, v17

    add-int/2addr v4, v5

    iput v4, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1833
    :cond_9
    :goto_7
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1834
    move-object/from16 v0, v21

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_15

    if-lez p6, :cond_15

    .line 1835
    new-instance v11, Landroid/graphics/Rect;

    const/16 v4, -0x2710

    add-int v5, v22, p6

    const/16 v6, 0x2710

    move/from16 v0, v22

    invoke-direct {v11, v0, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1836
    .local v11, curRect:Landroid/graphics/Rect;
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1837
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result p6

    .end local p6
    move/from16 v0, p6

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1838
    .restart local p6
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .end local v22           #x:I
    move/from16 v0, v22

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1850
    .end local v10           #bottom:I
    .end local v11           #curRect:Landroid/graphics/Rect;
    .end local v15           #root:Landroid/view/View;
    .end local v16           #rootLocation:[I
    .end local v17           #top:I
    .end local v18           #visibleDisplayFrame:Landroid/graphics/Rect;
    .end local v19           #visibleDisplayFrameHeight:I
    .end local v20           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v21           #wlp:Landroid/view/WindowManager$LayoutParams;
    .end local v24           #yRootInScreen:I
    .restart local v22       #x:I
    :cond_a
    :goto_8
    iget v5, v14, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, v14, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v0, v22

    if-ne v0, v4, :cond_b

    iget v4, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v0, v23

    if-eq v0, v4, :cond_16

    :cond_b
    const/4 v9, 0x1

    :goto_9
    move-object/from16 v4, p0

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v4 .. v9}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_0

    .line 1744
    .end local v12           #needsUpdate:Z
    .end local v14           #p:Landroid/view/WindowManager$LayoutParams;
    .end local v22           #x:I
    .end local v23           #y:I
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1747
    .restart local v12       #needsUpdate:Z
    :cond_d
    if-eqz v12, :cond_4

    .line 1749
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1750
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto/16 :goto_2

    .line 1759
    .restart local v14       #p:Landroid/view/WindowManager$LayoutParams;
    :cond_e
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupWidth:I

    goto/16 :goto_3

    .line 1764
    :cond_f
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    goto/16 :goto_4

    .line 1774
    .restart local v22       #x:I
    .restart local v23       #y:I
    :cond_10
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v4, v5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    goto/16 :goto_5

    .line 1803
    .restart local v10       #bottom:I
    .restart local v15       #root:Landroid/view/View;
    .restart local v16       #rootLocation:[I
    .restart local v17       #top:I
    .restart local v18       #visibleDisplayFrame:Landroid/graphics/Rect;
    .restart local v19       #visibleDisplayFrameHeight:I
    .restart local v20       #vlp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v21       #wlp:Landroid/view/WindowManager$LayoutParams;
    .restart local v24       #yRootInScreen:I
    :cond_11
    move-object/from16 v0, v21

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x50

    const/16 v5, 0x50

    if-ne v4, v5, :cond_12

    .line 1804
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, v21

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v24, v4, v5

    goto/16 :goto_6

    .line 1805
    :cond_12
    move-object/from16 v0, v21

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_7

    .line 1806
    iget v4, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v4, v19, v4

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v21

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v24, v4, v5

    goto/16 :goto_6

    .line 1821
    :cond_13
    const/4 v4, 0x1

    aget v4, v16, v4

    iget v5, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v4, v5

    add-int v10, v4, p4

    .line 1822
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-le v10, v4, :cond_14

    .line 1823
    iget v4, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v10, v5

    sub-int/2addr v4, v5

    iput v4, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1826
    :cond_14
    const/4 v4, 0x1

    aget v4, v16, v4

    iget v5, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v17, v4, v5

    .line 1827
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v17

    if-ge v0, v4, :cond_9

    .line 1828
    iget v4, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v5, v17

    add-int/2addr v4, v5

    iput v4, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_7

    .line 1840
    :cond_15
    move-object/from16 v0, v21

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x5

    const/4 v5, 0x5

    if-ne v4, v5, :cond_a

    if-lez p6, :cond_a

    .line 1841
    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int v4, v4, p6

    const/16 v5, -0x2710

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->right:I

    const/16 v7, 0x2710

    invoke-direct {v11, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1842
    .restart local v11       #curRect:Landroid/graphics/Rect;
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1843
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result p6

    .end local p6
    move/from16 v0, p6

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .restart local p6
    goto/16 :goto_8

    .line 1850
    .end local v10           #bottom:I
    .end local v11           #curRect:Landroid/graphics/Rect;
    .end local v15           #root:Landroid/view/View;
    .end local v16           #rootLocation:[I
    .end local v17           #top:I
    .end local v18           #visibleDisplayFrame:Landroid/graphics/Rect;
    .end local v19           #visibleDisplayFrameHeight:I
    .end local v20           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v21           #wlp:Landroid/view/WindowManager$LayoutParams;
    .end local v24           #yRootInScreen:I
    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_9
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .parameter "aboveAnchor"

    .prologue
    .line 953
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 954
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 956
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 961
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 967
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1534
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1535
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1537
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1540
    :try_start_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1542
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1543
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1545
    :cond_0
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1547
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 1548
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1552
    :cond_1
    return-void

    .line 1542
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1543
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1545
    :cond_2
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1547
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_3

    .line 1548
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1542
    :cond_3
    throw v1
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Landroid/widget/PopupWindow$Injector;->getBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .parameter "anchor"

    .prologue
    .line 1442
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .parameter "anchor"
    .parameter "yOffset"

    .prologue
    .line 1457
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 14
    .parameter "anchor"
    .parameter "yOffset"
    .parameter "ignoreBottomDecorations"

    .prologue
    .line 1478
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1479
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1483
    if-eqz p1, :cond_0

    .line 1484
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 1485
    .local v9, root:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 1486
    .local v10, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v11, 0x0

    .line 1488
    .local v11, wlp:Landroid/view/WindowManager$LayoutParams;
    instance-of v12, v10, Landroid/view/WindowManager$LayoutParams;

    if-eqz v12, :cond_0

    move-object v11, v10

    .line 1489
    check-cast v11, Landroid/view/WindowManager$LayoutParams;

    .line 1490
    iget v12, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v12, v12, 0x200

    if-nez v12, :cond_4

    const/4 v6, 0x0

    .line 1491
    .local v6, isMultiWindowPopup:Z
    :goto_0
    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->setMultiWindowPopup(Z)V

    .line 1494
    .end local v6           #isMultiWindowPopup:Z
    .end local v9           #root:Landroid/view/View;
    .end local v10           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v11           #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-direct {p0, p1, v2}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1497
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 1498
    .local v0, anchorPos:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1500
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1501
    .local v1, bottomEdge:I
    if-eqz p3, :cond_1

    .line 1502
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1503
    .local v7, res:Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v1, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1505
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_1
    const/4 v12, 0x1

    aget v12, v0, v12

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    sub-int v12, v1, v12

    sub-int v3, v12, p2

    .line 1506
    .local v3, distanceToBottom:I
    const/4 v12, 0x1

    aget v12, v0, v12

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    add-int v4, v12, p2

    .line 1509
    .local v4, distanceToTop:I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1512
    .local v8, returnedHeight:I
    iget-boolean v12, p0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    if-eqz v12, :cond_2

    .line 1513
    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    div-int/lit8 v5, v12, 0x2

    .line 1514
    .local v5, halfScreenSize:I
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1518
    .end local v5           #halfScreenSize:I
    :cond_2
    iget-object v12, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    .line 1519
    iget-object v12, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v13, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1520
    iget-object v12, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget-object v13, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    sub-int/2addr v8, v12

    .line 1523
    :cond_3
    return v8

    .line 1490
    .end local v0           #anchorPos:[I
    .end local v1           #bottomEdge:I
    .end local v3           #distanceToBottom:I
    .end local v4           #distanceToTop:I
    .end local v8           #returnedHeight:I
    .restart local v9       #root:Landroid/view/View;
    .restart local v10       #vlp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v11       #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 784
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 985
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 808
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 633
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 634
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 634
    goto :goto_0

    .line 636
    :cond_2
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 622
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 623
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .parameter "animationStyle"

    .prologue
    .line 382
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 383
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "background"

    .prologue
    .line 340
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 341
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 611
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 612
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 613
    return-void

    .line 612
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 601
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 602
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "contentView"

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 414
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 418
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 0
    .parameter "focusable"

    .prologue
    .line 459
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 460
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 773
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 774
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 365
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 485
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 486
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 676
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 677
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 692
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 693
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .parameter "onDismissListener"

    .prologue
    .line 1560
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 1561
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 572
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 573
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 499
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 500
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 653
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 654
    return-void

    .line 653
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 428
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 429
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .parameter "touchModal"

    .prologue
    .line 720
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 721
    return-void

    .line 720
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 539
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 540
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 799
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 800
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 746
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 747
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 748
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .parameter "layoutType"

    .prologue
    .line 703
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 704
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .parameter "anchor"

    .prologue
    const/4 v0, 0x0

    .line 877
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 878
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 12
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 895
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v11, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    const/4 v5, 0x0

    .line 901
    .local v5, token:Landroid/os/IBinder;
    if-eqz p1, :cond_4

    .line 902
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 903
    .local v4, root:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 904
    .local v6, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, 0x0

    .line 906
    .local v8, wlp:Landroid/view/WindowManager$LayoutParams;
    instance-of v11, v6, Landroid/view/WindowManager$LayoutParams;

    if-eqz v11, :cond_3

    move-object v8, v6

    .line 907
    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    .line 908
    iget v11, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v11, v11, 0x200

    if-nez v11, :cond_7

    move v2, v9

    .line 909
    .local v2, isMultiWindowPopup:Z
    :goto_1
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->setMultiWindowPopup(Z)V

    .line 910
    instance-of v11, v4, Landroid/view/ViewGroup;

    if-eqz v11, :cond_3

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #root:Landroid/view/View;
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v9, v9, Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v9, :cond_3

    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x3ea

    if-ne v9, v11, :cond_3

    .line 913
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 914
    .local v1, ctx:Landroid/content/Context;
    instance-of v9, v1, Landroid/app/Activity;

    if-nez v9, :cond_2

    instance-of v9, v1, Landroid/content/ContextWrapper;

    if-eqz v9, :cond_2

    .line 915
    check-cast v1, Landroid/content/ContextWrapper;

    .end local v1           #ctx:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 916
    .restart local v1       #ctx:Landroid/content/Context;
    :cond_2
    instance-of v9, v1, Landroid/app/Activity;

    if-eqz v9, :cond_3

    move-object v0, v1

    .line 917
    check-cast v0, Landroid/app/Activity;

    .line 918
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v7

    .line 919
    .local v7, windowMode:I
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/high16 v9, 0x200

    and-int/2addr v9, v7

    if-eqz v9, :cond_3

    .line 921
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    .line 926
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #ctx:Landroid/content/Context;
    .end local v2           #isMultiWindowPopup:Z
    .end local v7           #windowMode:I
    :cond_3
    if-nez v5, :cond_4

    .line 927
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    .line 932
    .end local v6           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v8           #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 934
    iput-boolean v10, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 935
    iput-boolean v10, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 938
    invoke-direct {p0, v5}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 940
    .local v3, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v3}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 942
    invoke-direct {p0, p1, v3, p2, p3}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v9

    invoke-direct {p0, v9}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 944
    iget v9, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v9, :cond_5

    iget v9, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v9, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 945
    :cond_5
    iget v9, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v9, :cond_6

    iget v9, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v9, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 947
    :cond_6
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v9

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 949
    invoke-direct {p0, v3}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    .end local v3           #p:Landroid/view/WindowManager$LayoutParams;
    .restart local v4       #root:Landroid/view/View;
    .restart local v6       #vlp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v8       #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_7
    move v2, v10

    .line 908
    goto :goto_1
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2
    .parameter "token"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 841
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 847
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 848
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 850
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 851
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 853
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 854
    if-nez p2, :cond_2

    .line 855
    const p2, 0x800033

    .line 857
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 858
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 859
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 860
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_3

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 861
    :cond_3
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_4

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 862
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 826
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 827
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 1571
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1596
    :cond_0
    :goto_0
    return-void

    .line 1575
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1578
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 1580
    .local v3, update:Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    .line 1581
    .local v0, newAnim:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 1582
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1583
    const/4 v3, 0x1

    .line 1586
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    .line 1587
    .local v1, newFlags:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 1588
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1589
    const/4 v3, 0x1

    .line 1592
    :cond_3
    if-eqz v3, :cond_0

    .line 1593
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1594
    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1607
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1609
    .local v6, p:Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1610
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1624
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1625
    return-void
.end method

.method public update(IIIIZ)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "force"

    .prologue
    const/4 v9, -0x1

    .line 1641
    if-eq p3, v9, :cond_0

    .line 1642
    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 1643
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1646
    :cond_0
    if-eq p4, v9, :cond_1

    .line 1647
    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 1648
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1651
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v7, :cond_3

    .line 1702
    :cond_2
    :goto_0
    return-void

    .line 1655
    :cond_3
    iget-object v7, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 1657
    .local v5, p:Landroid/view/WindowManager$LayoutParams;
    move v6, p5

    .line 1659
    .local v6, update:Z
    iget v7, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v7, :cond_b

    iget v2, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1660
    .local v2, finalWidth:I
    :goto_1
    if-eq p3, v9, :cond_5

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v7, v2, :cond_5

    .line 1661
    iput v2, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1662
    iget-boolean v7, p0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_4

    .line 1663
    iget-object v7, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1664
    .local v0, anchor:Landroid/view/View;
    if-eqz v0, :cond_4

    .line 1665
    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1667
    .end local v0           #anchor:Landroid/view/View;
    :cond_4
    const/4 v6, 0x1

    .line 1670
    :cond_5
    iget v7, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v7, :cond_c

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 1671
    .local v1, finalHeight:I
    :goto_2
    if-eq p4, v9, :cond_6

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v7, v1, :cond_6

    .line 1672
    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1673
    const/4 v6, 0x1

    .line 1676
    :cond_6
    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v7, p1, :cond_7

    .line 1677
    iput p1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1678
    const/4 v6, 0x1

    .line 1681
    :cond_7
    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v7, p2, :cond_8

    .line 1682
    iput p2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1683
    const/4 v6, 0x1

    .line 1686
    :cond_8
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v3

    .line 1687
    .local v3, newAnim:I
    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v3, v7, :cond_9

    .line 1688
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1689
    const/4 v6, 0x1

    .line 1692
    :cond_9
    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v7}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v4

    .line 1693
    .local v4, newFlags:I
    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v4, v7, :cond_a

    .line 1694
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1695
    const/4 v6, 0x1

    .line 1698
    :cond_a
    if-eqz v6, :cond_2

    .line 1699
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1700
    iget-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v8, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v7, v8, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1659
    .end local v1           #finalHeight:I
    .end local v2           #finalWidth:I
    .end local v3           #newAnim:I
    .end local v4           #newFlags:I
    :cond_b
    iget v2, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    goto :goto_1

    .line 1670
    .restart local v2       #finalWidth:I
    :cond_c
    iget v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 8
    .parameter "anchor"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 1714
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1715
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 8
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    .line 1733
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1734
    return-void
.end method
