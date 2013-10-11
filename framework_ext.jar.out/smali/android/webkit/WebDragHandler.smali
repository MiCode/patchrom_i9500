.class Landroid/webkit/WebDragHandler;
.super Ljava/lang/Object;
.source "WebDragHandler.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebDragHandler$MyDragShadowBuilder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "WebDragHandler"

.field private static final TYPE_HTML:I = 0x2

.field private static final TYPE_IMAGE:I = 0x3

.field private static final TYPE_TEXT:I = 0x1

.field private static isDragSelection:Z

.field private static mBitmap:Landroid/graphics/Bitmap;

.field private static mInstance:Landroid/webkit/WebDragHandler;

.field private static mPicture:Landroid/graphics/Picture;

.field private static mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput v0, Landroid/webkit/WebDragHandler;->mType:I

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebDragHandler;->isDragSelection:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 24
    sget v0, Landroid/webkit/WebDragHandler;->mType:I

    return v0
.end method

.method static synthetic access$100()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Landroid/webkit/WebDragHandler;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Landroid/webkit/WebDragHandler;->mPicture:Landroid/graphics/Picture;

    return-object v0
.end method

.method static getInstance()Landroid/webkit/WebDragHandler;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/webkit/WebDragHandler;->mInstance:Landroid/webkit/WebDragHandler;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/webkit/WebDragHandler;

    invoke-direct {v0}, Landroid/webkit/WebDragHandler;-><init>()V

    sput-object v0, Landroid/webkit/WebDragHandler;->mInstance:Landroid/webkit/WebDragHandler;

    .line 45
    :cond_0
    sget-object v0, Landroid/webkit/WebDragHandler;->mInstance:Landroid/webkit/WebDragHandler;

    return-object v0
.end method

.method static isDragSelection()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Landroid/webkit/WebDragHandler;->isDragSelection:Z

    return v0
.end method

.method static startDragSelection(Landroid/webkit/WebViewClassic;)V
    .locals 9
    .parameter "webView"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 50
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, copyString:Ljava/lang/String;
    const/4 v2, 0x0

    .line 55
    .local v2, dragData:Landroid/content/ClipData;
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    instance-of v4, v4, Landroid/webkit/HtmlComposerView;

    if-eqz v4, :cond_0

    .line 56
    const-string v4, "WebDragHandler"

    const-string v5, "startDragSelection: HtmlComposerView "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    check-cast v4, Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->getSelectedHtmlText()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, copyHtmlString:Ljava/lang/String;
    invoke-static {v8, v1, v0}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v2

    .line 59
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mCharacterSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Landroid/webkit/WebTextSelectionControls;->getSelectionPicture(Landroid/graphics/Region;)Landroid/graphics/Picture;

    move-result-object v4

    sput-object v4, Landroid/webkit/WebDragHandler;->mPicture:Landroid/graphics/Picture;

    .line 60
    const/4 v4, 0x2

    sput v4, Landroid/webkit/WebDragHandler;->mType:I

    .line 70
    .end local v0           #copyHtmlString:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 71
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 72
    new-instance v4, Landroid/webkit/WebDragHandler$MyDragShadowBuilder;

    invoke-direct {v4, v3}, Landroid/webkit/WebDragHandler$MyDragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v2, v4, v8, v6}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 73
    const-string v4, "WebDragHandler"

    const-string v5, "startDragSelection: starDrag failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sput-boolean v6, Landroid/webkit/WebDragHandler;->isDragSelection:Z

    .line 79
    :goto_1
    return-void

    .line 63
    .end local v3           #view:Landroid/view/View;
    :cond_0
    invoke-static {v1, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 64
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mCharacterSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Landroid/webkit/WebTextSelectionControls;->getSelectionPicture(Landroid/graphics/Region;)Landroid/graphics/Picture;

    move-result-object v4

    sput-object v4, Landroid/webkit/WebDragHandler;->mPicture:Landroid/graphics/Picture;

    .line 65
    sput v7, Landroid/webkit/WebDragHandler;->mType:I

    goto :goto_0

    .line 77
    .restart local v3       #view:Landroid/view/View;
    :cond_1
    sput-boolean v7, Landroid/webkit/WebDragHandler;->isDragSelection:Z

    goto :goto_1
.end method

.method static startDragSelection(Landroid/webkit/WebViewClassic;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "webView"
    .parameter "url"
    .parameter "path"

    .prologue
    const/4 v5, 0x0

    .line 86
    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 88
    .local v0, dragData:Landroid/content/ClipData;
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebDragHandler;->mBitmap:Landroid/graphics/Bitmap;

    .line 89
    sget-object v2, Landroid/webkit/WebDragHandler;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 90
    const-string v2, "WebDragHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDragSelection: Failed to decode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    const/4 v2, 0x3

    sput v2, Landroid/webkit/WebDragHandler;->mType:I

    .line 94
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 95
    .local v1, view:Landroid/view/View;
    new-instance v2, Landroid/webkit/WebDragHandler$MyDragShadowBuilder;

    invoke-direct {v2, v1}, Landroid/webkit/WebDragHandler$MyDragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v5}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    const-string v2, "WebDragHandler"

    const-string v3, "startDragSelection: starDrag failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sput-boolean v5, Landroid/webkit/WebDragHandler;->isDragSelection:Z

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Landroid/webkit/WebDragHandler;->isDragSelection:Z

    goto :goto_0
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 147
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 148
    .local v0, action:I
    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 150
    :cond_0
    sput-boolean v1, Landroid/webkit/WebDragHandler;->isDragSelection:Z

    .line 152
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    return v1

    .line 155
    :pswitch_0
    sput-object v3, Landroid/webkit/WebDragHandler;->mPicture:Landroid/graphics/Picture;

    .line 156
    sput-object v3, Landroid/webkit/WebDragHandler;->mBitmap:Landroid/graphics/Bitmap;

    .line 157
    const/4 v1, 0x1

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
