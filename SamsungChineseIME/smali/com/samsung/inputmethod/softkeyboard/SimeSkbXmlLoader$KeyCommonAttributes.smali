.class Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
.super Ljava/lang/Object;
.source "SimeSkbXmlLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyCommonAttributes"
.end annotation


# instance fields
.field balloon:Z

.field balloonHeight:F

.field balloonWidth:F

.field disable:Z

.field keyHeight:F

.field keyType:I

.field keyWidth:F

.field mXrp:Landroid/content/res/XmlResourceParser;

.field repeat:Z

.field final synthetic this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V
    .locals 1
    .parameter
    .parameter "xrp"

    .prologue
    .line 385
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloon:Z

    .line 388
    return-void
.end method


# virtual methods
.method getAttributes(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Z
    .locals 5
    .parameter "defAttr"

    .prologue
    const/4 v4, 0x0

    .line 392
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v2, "key_type"

    iget v3, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyType:I

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->access$000(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyType:I

    .line 393
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v2, "width"

    iget v3, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyWidth:F

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyWidth:F

    .line 394
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v2, "height"

    iget v3, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyHeight:F

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyHeight:F

    .line 395
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v2, "balloon_width"

    iget v3, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloonWidth:F

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloonWidth:F

    .line 396
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v2, "balloon_height"

    iget v3, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloonHeight:F

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloonHeight:F

    .line 397
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v2, "repeat"

    iget-boolean v3, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->repeat:Z

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->repeat:Z

    .line 398
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v2, "balloon"

    iget-boolean v3, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloon:Z

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloon:Z

    .line 399
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    const-string v2, "disable"

    iget-boolean v3, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->disable:Z

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->disable:Z

    .line 400
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyType:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyWidth:F

    cmpg-float v0, v0, v4

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyHeight:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_1

    .line 401
    :cond_0
    const/4 v0, 0x0

    .line 403
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
