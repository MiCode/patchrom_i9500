.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;
.super Ljava/lang/Object;
.source "SimeSkbXmlLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static DEFAULT_SKB_CACHE_FLAG:Z = false

.field private static DEFAULT_SKB_STICKY_FLAG:Z = false

.field private static final KEYTYPE_ID_LAST:I = -0x1

.field private static final TAG:Ljava/lang/String; = "XmlKeyboardLoader"

.field private static final XMLATTR_BALLOON_BG:Ljava/lang/String; = "balloon_bg"

.field private static final XMLATTR_BALLOON_HEIGHT:Ljava/lang/String; = "balloon_height"

.field private static final XMLATTR_BALLOON_WIDTH:Ljava/lang/String; = "balloon_width"

.field private static final XMLATTR_COLOR:Ljava/lang/String; = "color"

.field private static final XMLATTR_COLOR_BALLOON:Ljava/lang/String; = "color_balloon"

.field private static final XMLATTR_COLOR_HIGHLIGHT:Ljava/lang/String; = "color_highlight"

.field private static final XMLATTR_ID:Ljava/lang/String; = "id"

.field private static final XMLATTR_KEYTYPE_BG:Ljava/lang/String; = "bg"

.field private static final XMLATTR_KEYTYPE_HLBG:Ljava/lang/String; = "hlbg"

.field private static final XMLATTR_KEYVIEW_ROW_HEIGHT:Ljava/lang/String; = "view_row_height"

.field private static final XMLATTR_KEYVIEW_ROW_MARGIN:Ljava/lang/String; = "view_row_margin"

.field private static final XMLATTR_KEYVIEW_TEXT_MARGIN:Ljava/lang/String; = "view_text_margin"

.field private static final XMLATTR_KEYVIEW_TEXT_WIDTH:Ljava/lang/String; = "view_text_width"

.field private static final XMLATTR_KEY_BALLOON:Ljava/lang/String; = "balloon"

.field private static final XMLATTR_KEY_BOTTOMMARGIN:Ljava/lang/String; = "key_bottommargin"

.field private static final XMLATTR_KEY_CODE:Ljava/lang/String; = "code"

.field private static final XMLATTR_KEY_CODES:Ljava/lang/String; = "codes"

.field private static final XMLATTR_KEY_DISABLE:Ljava/lang/String; = "disable"

.field private static final XMLATTR_KEY_EXTRA_HLICON:Ljava/lang/String; = "extra_hlicon"

.field private static final XMLATTR_KEY_EXTRA_ICON:Ljava/lang/String; = "extra_icon"

.field private static final XMLATTR_KEY_HEIGHT:Ljava/lang/String; = "height"

.field private static final XMLATTR_KEY_HLICON:Ljava/lang/String; = "hlicon"

.field private static final XMLATTR_KEY_ICON:Ljava/lang/String; = "icon"

.field private static final XMLATTR_KEY_ICON_NORESIZE:Ljava/lang/String; = "icon_noresize"

.field private static final XMLATTR_KEY_ICON_POPUP:Ljava/lang/String; = "icon_popup"

.field private static final XMLATTR_KEY_LABEL:Ljava/lang/String; = "label"

.field private static final XMLATTR_KEY_LABELS:Ljava/lang/String; = "labels"

.field private static final XMLATTR_KEY_LEFTMARGIN:Ljava/lang/String; = "key_leftmargin"

.field private static final XMLATTR_KEY_LONG_ICON_POPUP:Ljava/lang/String; = "long_icon_popup"

.field private static final XMLATTR_KEY_LONG_LABEL:Ljava/lang/String; = "long_label"

.field private static final XMLATTR_KEY_LONG_LABELS:Ljava/lang/String; = "long_labels"

.field private static final XMLATTR_KEY_POPUP_SKBID:Ljava/lang/String; = "popup_skb"

.field private static final XMLATTR_KEY_REPEAT:Ljava/lang/String; = "repeat"

.field private static final XMLATTR_KEY_RIGHTMARGIN:Ljava/lang/String; = "key_rightmargin"

.field private static final XMLATTR_KEY_SPLITTER:Ljava/lang/String; = "splitter"

.field private static final XMLATTR_KEY_TOPMARGIN:Ljava/lang/String; = "key_topmargin"

.field private static final XMLATTR_KEY_TYPE:Ljava/lang/String; = "key_type"

.field private static final XMLATTR_KEY_WIDTH:Ljava/lang/String; = "width"

.field private static final XMLATTR_KEY_XMARGIN:Ljava/lang/String; = "key_xmargin"

.field private static final XMLATTR_KEY_YMARGIN:Ljava/lang/String; = "key_ymargin"

.field private static final XMLATTR_POPUP_BG:Ljava/lang/String; = "popup_bg"

.field private static final XMLATTR_QWERTY:Ljava/lang/String; = "qwerty"

.field private static final XMLATTR_QWERTY_UPPERCASE:Ljava/lang/String; = "qwerty_uppercase"

.field private static final XMLATTR_ROW_BOTTOM_MARGIN:Ljava/lang/String; = "row_bottom_margin"

.field private static final XMLATTR_ROW_ID:Ljava/lang/String; = "row_id"

.field private static final XMLATTR_ROW_TOP_MARGIN:Ljava/lang/String; = "row_top_margin"

.field private static final XMLATTR_SKB_BG:Ljava/lang/String; = "skb_bg"

.field private static final XMLATTR_SKB_CACHE_FLAG:Ljava/lang/String; = "skb_cache_flag"

.field private static final XMLATTR_SKB_HORIZONTAL_LINENUM:Ljava/lang/String; = "skb_hor_linenum"

.field private static final XMLATTR_SKB_STICKY_FLAG:Ljava/lang/String; = "skb_sticky_flag"

.field private static final XMLATTR_SKB_TEMPLATE:Ljava/lang/String; = "skb_template"

.field private static final XMLATTR_SKB_VERTICAL_LINENUM:Ljava/lang/String; = "skb_ver_linenum"

.field private static final XMLATTR_START_POS_X:Ljava/lang/String; = "start_pos_x"

.field private static final XMLATTR_START_POS_Y:Ljava/lang/String; = "start_pos_y"

.field private static final XMLATTR_TOGGLE_STATE_ID:Ljava/lang/String; = "state_id"

.field private static final XMLTAG_KEY:Ljava/lang/String; = "key"

.field private static final XMLTAG_KEYBOARD:Ljava/lang/String; = "keyboard"

.field private static final XMLTAG_KEYICON:Ljava/lang/String; = "key_icon"

.field private static final XMLTAG_KEYS:Ljava/lang/String; = "keys"

.field private static final XMLTAG_KEYTYPE:Ljava/lang/String; = "key_type"

.field private static final XMLTAG_ROW:Ljava/lang/String; = "row"

.field private static final XMLTAG_SKB_TEMPLATE:Ljava/lang/String; = "skb_template"

.field private static final XMLTAG_TOGGLE_STATE:Ljava/lang/String; = "toggle_state"

.field private static final XMLTAG_UNITE:Ljava/lang/String; = "unite"

.field private static final XML_TAG_KEY_VIEW:Ljava/lang/String; = "keyview"


# instance fields
.field mAttrTmp:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mKeyXMargin:F

.field mKeyXPos:F

.field mKeyYMargin:F

.field mKeyYPos:F

.field mNextEventFetched:Z

.field private mResources:Landroid/content/res/Resources;

.field mSkbHeight:I

.field private mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

.field mSkbWidth:I

.field private mXmlEventType:I

.field mballoonHeight:F

.field mballoonWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 307
    sput-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->DEFAULT_SKB_CACHE_FLAG:Z

    .line 309
    sput-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->DEFAULT_SKB_STICKY_FLAG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXMargin:F

    .line 364
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYMargin:F

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mNextEventFetched:Z

    .line 408
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    .line 409
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mResources:Landroid/content/res/Resources;

    .line 410
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z
    .locals 4
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 1202
    const/4 v3, 0x0

    invoke-interface {p1, v3, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1203
    .local v2, s:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1208
    .end local p3
    :goto_0
    return p3

    .line 1205
    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, ret:Z
    move p3, v1

    .line 1206
    goto :goto_0

    .line 1207
    .end local v1           #ret:Z
    :catch_0
    move-exception v0

    .line 1208
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 6
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    const/4 v5, 0x0

    .line 1154
    const/4 v4, 0x0

    invoke-interface {p1, v5, p2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1156
    .local v1, resId:I
    if-nez v1, :cond_1

    .line 1157
    invoke-interface {p1, v5, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1158
    .local v3, s:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1166
    .end local v3           #s:Ljava/lang/String;
    .end local p3
    :goto_0
    return p3

    .line 1160
    .restart local v3       #s:Ljava/lang/String;
    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, ret:I
    move p3, v2

    .line 1161
    goto :goto_0

    .line 1162
    .end local v2           #ret:I
    :catch_0
    move-exception v0

    .line 1163
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1166
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    goto :goto_0
.end method

.method private getDefaultKey(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .locals 20
    .parameter "xrp"
    .parameter "attrKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    const-string v17, "id"

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v9

    .line 887
    .local v9, keyId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getDefaultKey(I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v7

    .line 889
    .local v7, key:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    if-nez v7, :cond_0

    .line 890
    const-string v17, "XmlKeyboardLoader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "can\'t get key id="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "from template, please check your xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v15, 0x0

    .line 958
    :goto_0
    return-object v15

    .line 895
    :cond_0
    const/4 v15, 0x0

    .line 897
    .local v15, softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    instance-of v0, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 898
    new-instance v15, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    .end local v15           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-direct {v15}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;-><init>()V

    .restart local v15       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object/from16 v17, v15

    .line 899
    check-cast v17, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    move-object/from16 v18, v7

    check-cast v18, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->cloneToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->setToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;)Z

    .line 903
    :goto_1
    invoke-virtual {v15, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->cloneSamsungSoftKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 905
    const-string v17, "start_pos_x"

    const/high16 v18, -0x4080

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v11

    .line 906
    .local v11, keyXPos:F
    const/16 v17, 0x0

    cmpl-float v17, v11, v17

    if-ltz v17, :cond_4

    .line 908
    :goto_2
    const-string v17, "start_pos_y"

    const/high16 v18, -0x4080

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v12

    .line 909
    .local v12, keyyPos:F
    const/16 v17, 0x0

    cmpl-float v17, v12, v17

    if-ltz v17, :cond_5

    .line 911
    :goto_3
    const-string v17, "width"

    const/high16 v18, -0x4080

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v10

    .line 912
    .local v10, keyWidth:F
    const/16 v17, 0x0

    cmpl-float v17, v10, v17

    if-ltz v17, :cond_6

    .line 914
    :goto_4
    const-string v17, "height"

    const/high16 v18, -0x4080

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v8

    .line 915
    .local v8, keyHeight:F
    const/16 v17, 0x0

    cmpl-float v17, v8, v17

    if-ltz v17, :cond_7

    .line 919
    :goto_5
    const-string v17, "balloon_width"

    const/high16 v18, -0x4080

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v5

    .line 920
    .local v5, balloonWidth:F
    const/16 v17, 0x0

    cmpg-float v17, v5, v17

    if-gtz v17, :cond_1

    .line 921
    iget v0, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBalloonKeyWidth:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_a

    .line 922
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloonWidth:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_9

    .line 923
    iget-object v0, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mballoonWidth:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_8

    const v17, 0x3f99999a

    mul-float v5, v10, v17

    .line 932
    :cond_1
    :goto_6
    const-string v17, "balloon_height"

    const/high16 v18, -0x4080

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v4

    .line 933
    .local v4, balloonHeight:F
    const/16 v17, 0x0

    cmpg-float v17, v4, v17

    if-gtz v17, :cond_2

    .line 934
    iget v0, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBalloonKeyWidth:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_d

    .line 935
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloonWidth:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_c

    .line 936
    iget-object v0, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mballoonHeight:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_b

    const v17, 0x3f99999a

    mul-float v4, v8, v17

    .line 947
    :cond_2
    :goto_7
    move v13, v11

    .line 948
    .local v13, left:F
    add-float v14, v13, v10

    .line 949
    .local v14, right:F
    move/from16 v16, v12

    .line 950
    .local v16, top:F
    add-float v6, v16, v8

    .line 952
    .local v6, bottom:F
    sub-float v17, v14, v13

    const/high16 v18, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXMargin:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    cmpg-float v17, v17, v18

    if-gez v17, :cond_e

    const/4 v15, 0x0

    goto/16 :goto_0

    .line 901
    .end local v4           #balloonHeight:F
    .end local v5           #balloonWidth:F
    .end local v6           #bottom:F
    .end local v8           #keyHeight:F
    .end local v10           #keyWidth:F
    .end local v11           #keyXPos:F
    .end local v12           #keyyPos:F
    .end local v13           #left:F
    .end local v14           #right:F
    .end local v16           #top:F
    :cond_3
    new-instance v15, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .end local v15           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-direct {v15}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;-><init>()V

    .restart local v15       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    goto/16 :goto_1

    .line 906
    .restart local v11       #keyXPos:F
    :cond_4
    iget v11, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftF:F

    goto/16 :goto_2

    .line 909
    .restart local v12       #keyyPos:F
    :cond_5
    iget v12, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopF:F

    goto/16 :goto_3

    .line 912
    .restart local v10       #keyWidth:F
    :cond_6
    iget v0, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightF:F

    move/from16 v17, v0

    iget v0, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftF:F

    move/from16 v18, v0

    sub-float v10, v17, v18

    goto/16 :goto_4

    .line 915
    .restart local v8       #keyHeight:F
    :cond_7
    iget v0, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomF:F

    move/from16 v17, v0

    iget v0, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopF:F

    move/from16 v18, v0

    sub-float v8, v17, v18

    goto/16 :goto_5

    .line 923
    .restart local v5       #balloonWidth:F
    :cond_8
    iget-object v0, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mballoonWidth:F

    goto/16 :goto_6

    .line 925
    :cond_9
    move-object/from16 v0, p2

    iget v5, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloonWidth:F

    goto/16 :goto_6

    .line 928
    :cond_a
    iget v5, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBalloonKeyWidth:F

    goto/16 :goto_6

    .line 936
    .restart local v4       #balloonHeight:F
    :cond_b
    iget-object v0, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mballoonHeight:F

    goto :goto_7

    .line 938
    :cond_c
    move-object/from16 v0, p2

    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloonHeight:F

    goto :goto_7

    .line 941
    :cond_d
    iget v4, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBalloonKeyHeight:F

    goto :goto_7

    .line 953
    .restart local v6       #bottom:F
    .restart local v13       #left:F
    .restart local v14       #right:F
    .restart local v16       #top:F
    :cond_e
    sub-float v17, v6, v16

    const/high16 v18, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYMargin:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    cmpg-float v17, v17, v18

    if-gez v17, :cond_f

    const/4 v15, 0x0

    goto/16 :goto_0

    .line 955
    :cond_f
    move/from16 v0, v16

    invoke-virtual {v15, v13, v0, v14, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyDimensions(FFFF)V

    .line 956
    invoke-virtual {v15, v5, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setBalloonKeyAttribute(FF)V

    goto/16 :goto_0
.end method

.method private getDefaultKeyView(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    .locals 9
    .parameter "xrp"
    .parameter "attrKeyView"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v8, -0x4080

    const/4 v6, 0x0

    .line 825
    const-string v7, "view_row_height"

    invoke-direct {p0, p1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v2

    .line 826
    .local v2, viewRowHeight:F
    const-string v7, "view_row_margin"

    invoke-direct {p0, p1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v3

    .line 827
    .local v3, viewRowMargin:F
    const-string v7, "view_text_width"

    invoke-direct {p0, p1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v5

    .line 828
    .local v5, viewTextWidth:F
    const-string v7, "view_text_margin"

    invoke-direct {p0, p1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v4

    .line 830
    .local v4, viewTextMargin:F
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDefaultKey(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v0

    .line 831
    .local v0, defaultSoftKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    if-eqz v0, :cond_4

    .line 833
    new-instance v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;

    invoke-direct {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;-><init>()V

    .line 834
    .local v1, softkeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->cloneSamsungSoftKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 836
    cmpl-float v7, v2, v6

    if-ltz v7, :cond_0

    .line 838
    :goto_0
    cmpl-float v7, v3, v6

    if-ltz v7, :cond_1

    .line 839
    :goto_1
    cmpl-float v7, v5, v6

    if-ltz v7, :cond_2

    .line 841
    :goto_2
    cmpl-float v7, v4, v6

    if-ltz v7, :cond_3

    .line 843
    :goto_3
    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->setKeyViewDimensions(FFFF)V

    .line 848
    .end local v1           #softkeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    :goto_4
    return-object v1

    .line 836
    .restart local v1       #softkeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    :cond_0
    iget v7, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mBottom:I

    iget v8, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    goto :goto_0

    :cond_1
    move v3, v6

    .line 838
    goto :goto_1

    .line 839
    :cond_2
    iget v7, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mRight:I

    iget v8, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v5, v7

    goto :goto_2

    :cond_3
    move v4, v6

    .line 841
    goto :goto_3

    .line 848
    .end local v1           #softkeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    :cond_4
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 1214
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, p2, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1215
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 1216
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0
.end method

.method private getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F
    .locals 6
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1180
    invoke-interface {p1, v5, p2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1181
    .local v1, resId:I
    if-nez v1, :cond_2

    .line 1182
    invoke-interface {p1, v5, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1183
    .local v3, s:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1196
    .end local v3           #s:Ljava/lang/String;
    .end local p3
    :goto_0
    return p3

    .line 1186
    .restart local v3       #s:Ljava/lang/String;
    .restart local p3
    :cond_0
    :try_start_0
    const-string v4, "%p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1187
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x42c8

    div-float v2, v4, v5

    .local v2, ret:F
    :goto_1
    move p3, v2

    .line 1191
    goto :goto_0

    .line 1189
    .end local v2           #ret:F
    :cond_1
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .restart local v2       #ret:F
    goto :goto_1

    .line 1192
    .end local v2           #ret:F
    :catch_0
    move-exception v0

    .line 1193
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1196
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #s:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    goto :goto_0
.end method

.method private getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 6
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    const/4 v5, 0x0

    .line 1137
    const/4 v4, 0x0

    invoke-interface {p1, v5, p2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1139
    .local v1, resId:I
    if-nez v1, :cond_1

    .line 1140
    invoke-interface {p1, v5, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1141
    .local v3, s:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1149
    .end local v3           #s:Ljava/lang/String;
    .end local p3
    :goto_0
    return p3

    .line 1143
    .restart local v3       #s:Ljava/lang/String;
    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, ret:I
    move p3, v2

    .line 1144
    goto :goto_0

    .line 1145
    .end local v2           #ret:I
    :catch_0
    move-exception v0

    .line 1146
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1149
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_0
.end method

.method private getSoftKey(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .locals 33
    .parameter "xrp"
    .parameter "attrKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 965
    const-string v8, "id"

    const/4 v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v22

    .line 966
    .local v22, keyId:I
    const-string v8, "code"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v5

    .line 967
    .local v5, keyCode:I
    const-string v8, "start_pos_x"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v26

    .line 968
    .local v26, keyXPos:F
    const-string v8, "start_pos_y"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v27

    .line 969
    .local v27, keyYPos:F
    const-string v8, "label"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 970
    .local v6, keyLabel:Ljava/lang/String;
    const-string v8, "long_label"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 971
    .local v7, keyLongLabel:Ljava/lang/String;
    const-string v8, "icon"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 972
    .local v21, keyIcon:Landroid/graphics/drawable/Drawable;
    const-string v8, "hlicon"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 973
    .local v11, keyHlIcon:Landroid/graphics/drawable/Drawable;
    const-string v8, "extra_icon"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 974
    .local v12, keyExtraIcon:Landroid/graphics/drawable/Drawable;
    const-string v8, "extra_hlicon"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 975
    .local v13, keyExtraHlIcon:Landroid/graphics/drawable/Drawable;
    const-string v8, "icon_popup"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 976
    .local v14, keyIconPopup:Landroid/graphics/drawable/Drawable;
    const-string v8, "long_icon_popup"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 977
    .local v15, keyLongIconPopup:Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    const-string v9, "popup_skb"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v8, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v29

    .line 979
    .local v29, popupSkbId:I
    const-string v8, "key_leftmargin"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v23

    .line 980
    .local v23, keyLeftMargin:F
    const-string v8, "key_rightmargin"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v24

    .line 981
    .local v24, keyRightMargin:F
    const-string v8, "key_topmargin"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v25

    .line 982
    .local v25, keyTopMargin:F
    const-string v8, "key_bottommargin"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v20

    .line 983
    .local v20, keyBottomMargin:F
    const-string v8, "balloon_width"

    const/high16 v9, -0x4080

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v17

    .line 984
    .local v17, balloonWidth:F
    const-string v8, "balloon_height"

    const/high16 v9, -0x4080

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v16

    .line 986
    .local v16, balloonHeight:F
    const-string v8, "icon_noresize"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v19

    .line 988
    .local v19, iconNoResize:Z
    if-nez v6, :cond_1

    if-nez v21, :cond_1

    .line 989
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    invoke-virtual {v8, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getDefaultKeyIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 990
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    invoke-virtual {v8, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getDefaultKeyIconPopup(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 991
    if-eqz v21, :cond_0

    if-nez v14, :cond_1

    :cond_0
    const/4 v4, 0x0

    .line 1064
    :goto_0
    return-object v4

    .line 998
    :cond_1
    move/from16 v28, v26

    .line 999
    .local v28, left:F
    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyWidth:F

    add-float v30, v28, v8

    .line 1000
    .local v30, right:F
    move/from16 v32, v27

    .line 1001
    .local v32, top:F
    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyHeight:F

    add-float v18, v32, v8

    .line 1003
    .local v18, bottom:F
    sub-float v8, v30, v28

    const/high16 v9, 0x4000

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXMargin:F

    mul-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    .line 1004
    :cond_2
    sub-float v8, v18, v32

    const/high16 v9, 0x4000

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYMargin:F

    mul-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    .line 1009
    :cond_3
    const/16 v31, 0x0

    .line 1010
    .local v31, toggleKey:Z
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    .line 1011
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mNextEventFetched:Z

    .line 1014
    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 1015
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mAttrTmp:Ljava/lang/String;

    .line 1016
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mAttrTmp:Ljava/lang/String;

    const-string v9, "toggle_state"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4

    .line 1017
    const/16 v31, 0x1

    .line 1020
    :cond_4
    if-eqz v31, :cond_5

    .line 1021
    new-instance v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    invoke-direct {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;-><init>()V

    .local v4, softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object v8, v4

    .line 1022
    check-cast v8, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    move-object v9, v4

    check-cast v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->setToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1024
    const/4 v4, 0x0

    goto :goto_0

    .line 1027
    .end local v4           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_5
    new-instance v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-direct {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;-><init>()V

    .line 1031
    .restart local v4       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_6
    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->repeat:Z

    move-object/from16 v0, p2

    iget-boolean v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloon:Z

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->disable:Z

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyAttribute(ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1033
    move/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setPopupSkbId(I)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v0, p2

    iget v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyType:I

    invoke-virtual {v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getKeyType(I)Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    move-result-object v9

    move-object v8, v4

    move-object/from16 v10, v21

    invoke-virtual/range {v8 .. v15}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyType(Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1037
    move/from16 v0, v28

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v18

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyDimensions(FFFF)V

    .line 1038
    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyLeftRightMargins(FFFF)V

    .line 1039
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setIconNoResize(Z)V

    .line 1043
    const/4 v8, 0x0

    cmpg-float v8, v17, v8

    if-gez v8, :cond_7

    .line 1044
    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloonWidth:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_a

    .line 1045
    if-gez v22, :cond_7

    .line 1046
    iget-object v8, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v8, v8, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mballoonWidth:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_9

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyWidth:F

    const v9, 0x3f99999a

    mul-float v17, v8, v9

    .line 1053
    :cond_7
    :goto_1
    const/4 v8, 0x0

    cmpg-float v8, v16, v8

    if-gez v8, :cond_8

    .line 1054
    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloonHeight:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_c

    .line 1055
    if-gez v22, :cond_8

    .line 1056
    iget-object v8, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v8, v8, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mballoonHeight:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_b

    move-object/from16 v0, p2

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyHeight:F

    const v9, 0x3f99999a

    mul-float v16, v8, v9

    .line 1062
    :cond_8
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setBalloonKeyAttribute(FF)V

    goto/16 :goto_0

    .line 1046
    :cond_9
    iget-object v8, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v0, v8, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mballoonWidth:F

    move/from16 v17, v0

    goto :goto_1

    .line 1049
    :cond_a
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloonWidth:F

    move/from16 v17, v0

    goto :goto_1

    .line 1056
    :cond_b
    iget-object v8, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v0, v8, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mballoonHeight:F

    move/from16 v16, v0

    goto :goto_2

    .line 1059
    :cond_c
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloonHeight:F

    move/from16 v16, v0

    goto :goto_2
.end method

.method private getSoftKeyView(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    .locals 9
    .parameter "xrp"
    .parameter "attrKeyView"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v8, -0x4080

    const/4 v6, 0x0

    .line 856
    const-string v7, "view_row_height"

    invoke-direct {p0, p1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v2

    .line 857
    .local v2, viewRowHeight:F
    const-string v7, "view_row_margin"

    invoke-direct {p0, p1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v3

    .line 858
    .local v3, viewRowMargin:F
    const-string v7, "view_text_width"

    invoke-direct {p0, p1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v5

    .line 859
    .local v5, viewTextWidth:F
    const-string v7, "view_text_margin"

    invoke-direct {p0, p1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v4

    .line 861
    .local v4, viewTextMargin:F
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getSoftKey(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v0

    .line 862
    .local v0, softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    if-eqz v0, :cond_4

    .line 864
    new-instance v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;

    invoke-direct {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;-><init>()V

    .line 865
    .local v1, softkeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->cloneSamsungSoftKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 867
    cmpl-float v7, v2, v6

    if-ltz v7, :cond_0

    .line 869
    :goto_0
    cmpl-float v7, v3, v6

    if-ltz v7, :cond_1

    .line 870
    :goto_1
    cmpl-float v7, v5, v6

    if-ltz v7, :cond_2

    .line 872
    :goto_2
    cmpl-float v7, v4, v6

    if-ltz v7, :cond_3

    .line 874
    :goto_3
    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->setKeyViewDimensions(FFFF)V

    .line 879
    .end local v1           #softkeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    :goto_4
    return-object v1

    .line 867
    .restart local v1       #softkeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    :cond_0
    iget v7, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mBottom:I

    iget v8, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    goto :goto_0

    :cond_1
    move v3, v6

    .line 869
    goto :goto_1

    .line 870
    :cond_2
    iget v7, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mRight:I

    iget v8, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v5, v7

    goto :goto_2

    :cond_3
    move v4, v6

    .line 872
    goto :goto_3

    .line 879
    .end local v1           #softkeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    :cond_4
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    const/4 v2, 0x0

    .line 1171
    const/4 v1, 0x0

    invoke-interface {p1, v2, p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1172
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 1173
    invoke-interface {p1, v2, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1175
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    .locals 24
    .parameter "attrKey"
    .parameter "softKey"
    .parameter "defKeyCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1070
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    move-object/from16 v21, v0

    .line 1071
    .local v21, xrp:Landroid/content/res/XmlResourceParser;
    const-string v22, "state_id"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v20

    .line 1072
    .local v20, stateId:I
    if-nez v20, :cond_1

    const/16 v19, 0x0

    .line 1133
    :cond_0
    :goto_0
    return-object v19

    .line 1074
    :cond_1
    const-string v22, "label"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1075
    .local v13, keyLabel:Ljava/lang/String;
    const-string v22, "long_label"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1076
    .local v14, keyLongLabel:Ljava/lang/String;
    const-string v22, "key_type"

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v15

    .line 1078
    .local v15, keyTypeId:I
    if-nez v13, :cond_2

    .line 1079
    const-string v22, "code"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v12

    .line 1083
    .local v12, keyCode:I
    :goto_1
    const-string v22, "icon"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1084
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    const-string v22, "hlicon"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1085
    .local v9, hlIcon:Landroid/graphics/drawable/Drawable;
    const-string v22, "extra_icon"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1086
    .local v8, extraIcon:Landroid/graphics/drawable/Drawable;
    const-string v22, "extra_hlicon"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1088
    .local v7, extraHLIcon:Landroid/graphics/drawable/Drawable;
    const-string v22, "icon_popup"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1089
    .local v11, iconPopup:Landroid/graphics/drawable/Drawable;
    const-string v22, "long_icon_popup"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 1090
    .local v16, longIconPopup:Landroid/graphics/drawable/Drawable;
    if-nez v10, :cond_3

    if-nez v13, :cond_3

    .line 1091
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1081
    .end local v7           #extraHLIcon:Landroid/graphics/drawable/Drawable;
    .end local v8           #extraIcon:Landroid/graphics/drawable/Drawable;
    .end local v9           #hlIcon:Landroid/graphics/drawable/Drawable;
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v11           #iconPopup:Landroid/graphics/drawable/Drawable;
    .end local v12           #keyCode:I
    .end local v16           #longIconPopup:Landroid/graphics/drawable/Drawable;
    :cond_2
    const-string v22, "code"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v12

    .restart local v12       #keyCode:I
    goto :goto_1

    .line 1093
    .restart local v7       #extraHLIcon:Landroid/graphics/drawable/Drawable;
    .restart local v8       #extraIcon:Landroid/graphics/drawable/Drawable;
    .restart local v9       #hlIcon:Landroid/graphics/drawable/Drawable;
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v11       #iconPopup:Landroid/graphics/drawable/Drawable;
    .restart local v16       #longIconPopup:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->createToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v19

    .line 1094
    .local v19, rootState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    invoke-virtual/range {v19 .. v20}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->setStateId(I)V

    .line 1095
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    .line 1096
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v0, v15, :cond_4

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getKeyType(I)Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    .line 1099
    :cond_4
    move-object/from16 v0, v19

    iput v12, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyCode:I

    .line 1100
    move-object/from16 v0, v19

    iput-object v10, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 1101
    move-object/from16 v0, v19

    iput-object v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyHlIcon:Landroid/graphics/drawable/Drawable;

    .line 1102
    move-object/from16 v0, v19

    iput-object v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyExtraIcon:Landroid/graphics/drawable/Drawable;

    .line 1103
    move-object/from16 v0, v19

    iput-object v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyExtraHlIcon:Landroid/graphics/drawable/Drawable;

    .line 1104
    move-object/from16 v0, v19

    iput-object v11, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    .line 1105
    move-object/from16 v0, v19

    iput-object v13, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLabel:Ljava/lang/String;

    .line 1106
    move-object/from16 v0, v19

    iput-object v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLongLabel:Ljava/lang/String;

    .line 1107
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLPIconPopup:Landroid/graphics/drawable/Drawable;

    .line 1109
    const-string v22, "repeat"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->repeat:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v18

    .line 1110
    .local v18, repeat:Z
    const-string v22, "balloon"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloon:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v5

    .line 1111
    .local v5, balloon:Z
    const-string v22, "disable"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->disable:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v6

    .line 1113
    .local v6, disable:Z
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->setStateFlags(ZZZ)V

    .line 1115
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mNextState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    .line 1118
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    .line 1120
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 1121
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    goto :goto_2

    .line 1123
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 1124
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1125
    .local v4, attr:Ljava/lang/String;
    const-string v22, "toggle_state"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_0

    .line 1126
    invoke-direct/range {p0 .. p3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v17

    .line 1128
    .local v17, nextState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-nez v17, :cond_6

    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1129
    :cond_6
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mNextState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    goto/16 :goto_0
.end method

.method private getUnite(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;
    .locals 12
    .parameter "xrp"
    .parameter "attrKeyUnite"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1222
    const-string v10, "start_pos_x"

    iget v11, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    invoke-direct {p0, p1, v10, v11}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v3

    .line 1223
    .local v3, keyXPos:F
    const-string v10, "label"

    invoke-direct {p0, p1, v10, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1225
    .local v4, label:Ljava/lang/String;
    if-nez v4, :cond_0

    move-object v8, v9

    .line 1285
    :goto_0
    return-object v8

    .line 1229
    :cond_0
    move v5, v3

    .line 1230
    .local v5, left:F
    iget v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    .line 1235
    .local v7, top:F
    new-instance v8, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;

    invoke-direct {v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;-><init>()V

    .line 1236
    .local v8, unite:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;
    invoke-virtual {v8, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->setKeyAttribute(Ljava/lang/String;)V

    .line 1237
    iget-object v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    iget v11, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyType:I

    invoke-virtual {v10, v11}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getKeyType(I)Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->setKeyType(Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;)V

    .line 1239
    invoke-virtual {v8, v5, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->setUniteDimensions(FF)V

    .line 1240
    new-instance v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    invoke-direct {v1, p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 1243
    .local v1, attrKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    iput v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    .line 1245
    const/4 v2, 0x0

    .line 1247
    .local v2, keyId:I
    iget v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 1248
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mAttrTmp:Ljava/lang/String;

    .line 1249
    iget-object v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mAttrTmp:Ljava/lang/String;

    const-string v11, "key"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    .line 1255
    const-string v10, "id"

    const/4 v11, -0x1

    invoke-direct {p0, p1, v10, v11}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v2

    .line 1256
    if-ltz v2, :cond_2

    .line 1257
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDefaultKey(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v6

    .line 1264
    .local v6, softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :goto_1
    invoke-virtual {v8, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->addSoftKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z

    .line 1267
    invoke-virtual {v6, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setParentKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 1269
    iget v10, v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightF:F

    iput v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    .line 1270
    iget v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    float-to-int v10, v10

    iget v11, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    if-le v10, v11, :cond_3

    move-object v8, v9

    .line 1271
    goto :goto_0

    .line 1259
    .end local v6           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_2
    invoke-virtual {v1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->getAttributes(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Z

    .line 1260
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getSoftKey(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v6

    .restart local v6       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    goto :goto_1

    .line 1276
    .end local v6           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_3
    iget v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    .line 1277
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1278
    .local v0, attr:Ljava/lang/String;
    const-string v10, "unite"

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0
.end method


# virtual methods
.method public loadKeyboard(III)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .locals 55
    .parameter "resourceId"
    .parameter "skbWidth"
    .parameter "skbHeight"

    .prologue
    .line 539
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    if-nez v7, :cond_0

    const/16 v49, 0x0

    .line 819
    :goto_0
    return-object v49

    .line 541
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;

    move-result-object v44

    .line 543
    .local v44, skbPool:Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v54

    .line 544
    .local v54, xrp:Landroid/content/res/XmlResourceParser;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    .line 545
    const/16 v48, 0x0

    .line 549
    .local v48, softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    const/4 v5, 0x0

    .line 550
    .local v5, softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    const/16 v47, 0x0

    .line 552
    .local v47, softKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    new-instance v16, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 553
    .local v16, attrDef:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    new-instance v21, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 554
    .local v21, attrSkb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    new-instance v20, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 555
    .local v20, attrRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    new-instance v22, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 556
    .local v22, attrUnite:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    new-instance v19, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 557
    .local v19, attrKeys:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    new-instance v17, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 558
    .local v17, attrKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    new-instance v18, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 560
    .local v18, attrKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    .line 561
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    .line 562
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    .line 563
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbHeight:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 566
    const/4 v7, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXMargin:F

    .line 567
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYMargin:F

    .line 568
    invoke-interface/range {v54 .. v54}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    move-object/from16 v49, v48

    .line 569
    .end local v48           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .local v49, softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_29

    .line 570
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mNextEventFetched:Z

    .line 571
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_28

    .line 572
    invoke-interface/range {v54 .. v54}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 574
    .local v15, attr:Ljava/lang/String;
    const-string v7, "keyboard"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 576
    const/4 v7, 0x0

    const-string v8, "skb_template"

    const/4 v9, 0x0

    move-object/from16 v0, v54

    invoke-interface {v0, v7, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v45

    .line 581
    .local v45, skbTemplateId:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v1, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSkbTemplate(ILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    .line 584
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    if-eqz v7, :cond_2

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->getAttributes(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 586
    :cond_2
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 589
    :cond_3
    const-string v7, "skb_cache_flag"

    sget-boolean v8, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->DEFAULT_SKB_CACHE_FLAG:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v25

    .line 591
    .local v25, cacheFlag:Z
    const-string v7, "skb_sticky_flag"

    sget-boolean v8, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->DEFAULT_SKB_STICKY_FLAG:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v51

    .line 594
    .local v51, stickyFlag:Z
    const-string v7, "qwerty"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v31

    .line 596
    .local v31, isQwerty:Z
    const-string v7, "qwerty_uppercase"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v32

    .line 599
    .local v32, isQwertyUpperCase:Z
    const-string v7, "skb_ver_linenum"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v53

    .line 600
    .local v53, verLinenum:I
    const-string v7, "skb_hor_linenum"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v29

    .line 602
    .local v29, horLinenum:I
    new-instance v48, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbHeight:I

    move-object/from16 v0, v48

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;-><init>(ILcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;II)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 604
    .end local v49           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v48       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :try_start_3
    move-object/from16 v0, v48

    move/from16 v1, v25

    move/from16 v2, v51

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setFlags(ZZZZ)V

    .line 606
    move-object/from16 v0, v48

    move/from16 v1, v53

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setLinenums(II)V

    .line 608
    const-string v7, "key_xmargin"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getXMargin()F

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXMargin:F

    .line 610
    const-string v7, "key_ymargin"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getYMargin()F

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYMargin:F

    .line 612
    const-string v7, "skb_bg"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v43

    .line 613
    .local v43, skbBg:Landroid/graphics/drawable/Drawable;
    const-string v7, "popup_bg"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v40

    .line 614
    .local v40, popupBg:Landroid/graphics/drawable/Drawable;
    const-string v7, "balloon_bg"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 615
    .local v23, balloonBg:Landroid/graphics/drawable/Drawable;
    if-eqz v43, :cond_4

    .line 616
    move-object/from16 v0, v48

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setSkbBackground(Landroid/graphics/drawable/Drawable;)V

    .line 618
    :cond_4
    if-eqz v40, :cond_5

    .line 619
    move-object/from16 v0, v48

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setPopupBackground(Landroid/graphics/drawable/Drawable;)V

    .line 621
    :cond_5
    if-eqz v23, :cond_6

    .line 622
    move-object/from16 v0, v48

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setKeyBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 624
    :cond_6
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXMargin:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYMargin:F

    move-object/from16 v0, v48

    invoke-virtual {v0, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setKeyMargins(FF)V

    .line 803
    .end local v15           #attr:Ljava/lang/String;
    .end local v23           #balloonBg:Landroid/graphics/drawable/Drawable;
    .end local v25           #cacheFlag:Z
    .end local v29           #horLinenum:I
    .end local v31           #isQwerty:Z
    .end local v32           #isQwertyUpperCase:Z
    .end local v40           #popupBg:Landroid/graphics/drawable/Drawable;
    .end local v43           #skbBg:Landroid/graphics/drawable/Drawable;
    .end local v45           #skbTemplateId:I
    .end local v51           #stickyFlag:Z
    .end local v53           #verLinenum:I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mNextEventFetched:Z

    if-nez v7, :cond_1

    invoke-interface/range {v54 .. v54}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v49, v48

    .end local v48           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v49       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    goto/16 :goto_1

    .line 625
    .restart local v15       #attr:Ljava/lang/String;
    :cond_7
    :try_start_4
    const-string v7, "row"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_9

    .line 626
    invoke-virtual/range {v20 .. v21}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->getAttributes(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 627
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 630
    :cond_8
    const-string v7, "start_pos_x"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    .line 631
    const-string v7, "start_pos_y"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    .line 632
    const-string v7, "row_id"

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v42

    .line 634
    .local v42, rowId:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    const-string v8, "row_top_margin"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v8

    const-string v9, "row_bottom_margin"

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v9, v10}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v9

    move-object/from16 v0, v49

    move/from16 v1, v42

    invoke-virtual {v0, v1, v7, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->beginNewRow(IFFF)V

    move-object/from16 v48, v49

    .line 635
    .end local v49           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v48       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    goto :goto_2

    .end local v42           #rowId:I
    .end local v48           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v49       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :cond_9
    const-string v7, "keys"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_16

    .line 636
    if-nez v49, :cond_a

    const/16 v49, 0x0

    goto/16 :goto_0

    .line 637
    :cond_a
    invoke-virtual/range {v19 .. v20}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->getAttributes(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 638
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 641
    :cond_b
    const/4 v7, 0x0

    const-string v8, "splitter"

    move-object/from16 v0, v54

    invoke-interface {v0, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 643
    .local v50, splitter:Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 644
    const/4 v7, 0x0

    const-string v8, "labels"

    move-object/from16 v0, v54

    invoke-interface {v0, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 646
    .local v36, labels:Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "long_labels"

    move-object/from16 v0, v54

    invoke-interface {v0, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 648
    .local v39, longlables:Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "codes"

    move-object/from16 v0, v54

    invoke-interface {v0, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 650
    .local v27, codes:Ljava/lang/String;
    if-eqz v50, :cond_c

    if-nez v36, :cond_d

    .line 651
    :cond_c
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 653
    :cond_d
    move-object/from16 v0, v36

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    .line 655
    .local v35, labelArr:[Ljava/lang/String;
    const/16 v38, 0x0

    .line 656
    .local v38, longlabelArr:[Ljava/lang/String;
    if-eqz v39, :cond_e

    .line 657
    move-object/from16 v0, v39

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v38

    .line 660
    :cond_e
    const/16 v26, 0x0

    .line 662
    .local v26, codeArr:[Ljava/lang/String;
    if-eqz v27, :cond_f

    .line 663
    move-object/from16 v0, v27

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 664
    move-object/from16 v0, v35

    array-length v7, v0

    move-object/from16 v0, v26

    array-length v8, v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    if-eq v7, v8, :cond_f

    .line 665
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 669
    :cond_f
    const/16 v30, 0x0

    .local v30, i:I
    move-object/from16 v46, v5

    .end local v5           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .local v46, softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :goto_3
    :try_start_5
    move-object/from16 v0, v35

    array-length v7, v0

    move/from16 v0, v30

    if-ge v0, v7, :cond_15

    .line 670
    new-instance v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-direct {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;-><init>()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 671
    .end local v46           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v5       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    const/4 v6, 0x0

    .line 672
    .local v6, keyCode:I
    if-eqz v26, :cond_10

    .line 673
    :try_start_6
    aget-object v7, v26, v30

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 676
    :cond_10
    if-nez v38, :cond_11

    .line 677
    aget-object v7, v35, v30

    move-object/from16 v0, v19

    iget-boolean v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->repeat:Z

    move-object/from16 v0, v19

    iget-boolean v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloon:Z

    move-object/from16 v0, v19

    iget-boolean v10, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->disable:Z

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyAttribute(ILjava/lang/String;ZZZ)V

    .line 684
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v0, v19

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyType:I

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getKeyType(I)Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v5

    invoke-virtual/range {v7 .. v14}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyType(Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 688
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    move/from16 v37, v0

    .line 690
    .local v37, left:F
    move-object/from16 v0, v19

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyWidth:F

    add-float v41, v37, v7

    .line 691
    .local v41, right:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    move/from16 v52, v0

    .line 692
    .local v52, top:F
    move-object/from16 v0, v19

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyHeight:F

    add-float v24, v52, v7

    .line 694
    .local v24, bottom:F
    sub-float v7, v41, v37

    const/high16 v8, 0x4000

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXMargin:F

    mul-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_12

    const/16 v49, 0x0

    goto/16 :goto_0

    .line 680
    .end local v24           #bottom:F
    .end local v37           #left:F
    .end local v41           #right:F
    .end local v52           #top:F
    :cond_11
    aget-object v7, v35, v30

    aget-object v8, v38, v30

    move-object/from16 v0, v19

    iget-boolean v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->repeat:Z

    move-object/from16 v0, v19

    iget-boolean v10, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->balloon:Z

    move-object/from16 v0, v19

    iget-boolean v11, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->disable:Z

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyAttribute(ILjava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 808
    .end local v6           #keyCode:I
    .end local v15           #attr:Ljava/lang/String;
    .end local v26           #codeArr:[Ljava/lang/String;
    .end local v27           #codes:Ljava/lang/String;
    .end local v30           #i:I
    .end local v35           #labelArr:[Ljava/lang/String;
    .end local v36           #labels:Ljava/lang/String;
    .end local v38           #longlabelArr:[Ljava/lang/String;
    .end local v39           #longlables:Ljava/lang/String;
    .end local v50           #splitter:Ljava/lang/String;
    :catch_0
    move-exception v28

    move-object/from16 v48, v49

    .line 809
    .end local v49           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .local v28, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v48       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :goto_5
    :try_start_7
    const-string v7, "XmlKeyboardLoader"

    const-string v8, "Ill-formatted keybaord resource file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    .line 819
    .end local v5           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .end local v16           #attrDef:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v17           #attrKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v18           #attrKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v19           #attrKeys:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v20           #attrRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v21           #attrSkb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v22           #attrUnite:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v28           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v47           #softKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    .end local v48           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .end local v54           #xrp:Landroid/content/res/XmlResourceParser;
    :goto_6
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 695
    .restart local v5       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v6       #keyCode:I
    .restart local v15       #attr:Ljava/lang/String;
    .restart local v16       #attrDef:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v17       #attrKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v18       #attrKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v19       #attrKeys:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v20       #attrRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v21       #attrSkb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v22       #attrUnite:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v24       #bottom:F
    .restart local v26       #codeArr:[Ljava/lang/String;
    .restart local v27       #codes:Ljava/lang/String;
    .restart local v30       #i:I
    .restart local v35       #labelArr:[Ljava/lang/String;
    .restart local v36       #labels:Ljava/lang/String;
    .restart local v37       #left:F
    .restart local v38       #longlabelArr:[Ljava/lang/String;
    .restart local v39       #longlables:Ljava/lang/String;
    .restart local v41       #right:F
    .restart local v47       #softKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    .restart local v49       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v50       #splitter:Ljava/lang/String;
    .restart local v52       #top:F
    .restart local v54       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_12
    sub-float v7, v24, v52

    const/high16 v8, 0x4000

    :try_start_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYMargin:F

    mul-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_13

    const/16 v49, 0x0

    goto/16 :goto_0

    .line 697
    :cond_13
    move/from16 v0, v37

    move/from16 v1, v52

    move/from16 v2, v41

    move/from16 v3, v24

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyDimensions(FFFF)V

    .line 698
    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->addSoftKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z

    .line 699
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    .line 700
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    mul-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    if-le v7, v8, :cond_14

    .line 701
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 669
    :cond_14
    add-int/lit8 v30, v30, 0x1

    move-object/from16 v46, v5

    .end local v5           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v46       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    goto/16 :goto_3

    .end local v6           #keyCode:I
    .end local v24           #bottom:F
    .end local v37           #left:F
    .end local v41           #right:F
    .end local v52           #top:F
    :cond_15
    move-object/from16 v5, v46

    .end local v46           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v5       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object/from16 v48, v49

    .line 704
    .end local v49           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v48       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    goto/16 :goto_2

    .end local v26           #codeArr:[Ljava/lang/String;
    .end local v27           #codes:Ljava/lang/String;
    .end local v30           #i:I
    .end local v35           #labelArr:[Ljava/lang/String;
    .end local v36           #labels:Ljava/lang/String;
    .end local v38           #longlabelArr:[Ljava/lang/String;
    .end local v39           #longlables:Ljava/lang/String;
    .end local v48           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .end local v50           #splitter:Ljava/lang/String;
    .restart local v49       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :cond_16
    const-string v7, "unite"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_19

    .line 705
    if-nez v49, :cond_17

    .line 706
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 709
    :cond_17
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->getAttributes(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 710
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 712
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getUnite(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;

    move-result-object v34

    .line 713
    .local v34, keyUnite:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;
    move-object/from16 v0, v49

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->addSoftKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z

    move-object/from16 v48, v49

    .line 715
    .end local v49           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v48       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    goto/16 :goto_2

    .end local v34           #keyUnite:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;
    .end local v48           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v49       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :cond_19
    const-string v7, "key"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_20

    .line 716
    if-nez v49, :cond_1a

    .line 717
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 719
    :cond_1a
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->getAttributes(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 720
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 723
    :cond_1b
    const-string v7, "id"

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v33

    .line 724
    .local v33, keyId:I
    if-ltz v33, :cond_1c

    .line 725
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDefaultKey(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v5

    .line 729
    :goto_7
    if-nez v5, :cond_1d

    const/16 v49, 0x0

    goto/16 :goto_0

    .line 727
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getSoftKey(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v5

    goto :goto_7

    .line 732
    :cond_1d
    iget v7, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightF:F

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    .line 733
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    mul-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    if-le v7, v8, :cond_1e

    .line 734
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 741
    :cond_1e
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1f

    .line 742
    invoke-interface/range {v54 .. v54}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 743
    const-string v7, "row"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1f

    .line 744
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    move-object/from16 v0, v20

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyHeight:F

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    .line 745
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbHeight:I

    mul-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbHeight:I

    if-le v7, v8, :cond_1f

    .line 746
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 750
    :cond_1f
    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->addSoftKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z

    move-object/from16 v48, v49

    .line 751
    .end local v49           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v48       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    goto/16 :goto_2

    .end local v33           #keyId:I
    .end local v48           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v49       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :cond_20
    const-string v7, "keyview"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_27

    .line 753
    if-nez v49, :cond_21

    .line 754
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 756
    :cond_21
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->getAttributes(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Z

    move-result v7

    if-nez v7, :cond_22

    .line 757
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 760
    :cond_22
    const-string v7, "id"

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v33

    .line 761
    .restart local v33       #keyId:I
    if-ltz v33, :cond_23

    .line 762
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDefaultKeyView(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;

    move-result-object v47

    .line 766
    :goto_8
    if-nez v47, :cond_24

    .line 767
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 764
    :cond_23
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getSoftKeyView(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;

    move-result-object v47

    goto :goto_8

    .line 771
    :cond_24
    move-object/from16 v0, v47

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mRightF:F

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    .line 772
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    mul-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    if-le v7, v8, :cond_25

    .line 773
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 780
    :cond_25
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_26

    .line 781
    invoke-interface/range {v54 .. v54}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 782
    const-string v7, "row"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_26

    .line 783
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    move-object/from16 v0, v20

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyHeight:F

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    .line 784
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbHeight:I

    mul-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbHeight:I

    if-le v7, v8, :cond_26

    .line 785
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 789
    :cond_26
    move-object/from16 v0, v49

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->addSoftKeyView(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;)Z

    .end local v15           #attr:Ljava/lang/String;
    .end local v33           #keyId:I
    :cond_27
    move-object/from16 v48, v49

    .end local v49           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v48       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    goto/16 :goto_2

    .line 792
    .end local v48           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v49       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :cond_28
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_27

    .line 793
    invoke-interface/range {v54 .. v54}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 794
    .restart local v15       #attr:Ljava/lang/String;
    const-string v7, "row"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_27

    .line 795
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    move-object/from16 v0, v20

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->keyHeight:F

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    .line 796
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbHeight:I

    mul-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbHeight:I

    if-le v7, v8, :cond_27

    .line 797
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 805
    .end local v15           #attr:Ljava/lang/String;
    :cond_29
    invoke-interface/range {v54 .. v54}, Landroid/content/res/XmlResourceParser;->close()V

    .line 806
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbHeight:I

    move-object/from16 v0, v49

    invoke-virtual {v0, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setSkbCoreSize(II)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 810
    :catch_1
    move-exception v28

    move-object/from16 v48, v49

    .line 811
    .end local v49           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .local v28, e:Ljava/io/IOException;
    .restart local v48       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :goto_9
    :try_start_9
    const-string v7, "XmlKeyboardLoader"

    const-string v8, "Unable to read keyboard resource file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_6

    .line 814
    .end local v5           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .end local v16           #attrDef:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v17           #attrKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v18           #attrKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v19           #attrKeys:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v20           #attrRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v21           #attrSkb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v22           #attrUnite:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .end local v28           #e:Ljava/io/IOException;
    .end local v47           #softKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    .end local v48           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .end local v54           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v28

    .line 816
    .local v28, e:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "XmlKeyboardLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can\'t find resourceId id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "from template, please check your resource file"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 810
    .end local v28           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v5       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v16       #attrDef:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v17       #attrKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v18       #attrKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v19       #attrKeys:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v20       #attrRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v21       #attrSkb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v22       #attrUnite:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    .restart local v47       #softKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    .restart local v48       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v54       #xrp:Landroid/content/res/XmlResourceParser;
    :catch_3
    move-exception v28

    goto :goto_9

    .end local v5           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .end local v48           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v15       #attr:Ljava/lang/String;
    .restart local v26       #codeArr:[Ljava/lang/String;
    .restart local v27       #codes:Ljava/lang/String;
    .restart local v30       #i:I
    .restart local v35       #labelArr:[Ljava/lang/String;
    .restart local v36       #labels:Ljava/lang/String;
    .restart local v38       #longlabelArr:[Ljava/lang/String;
    .restart local v39       #longlables:Ljava/lang/String;
    .restart local v46       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v49       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v50       #splitter:Ljava/lang/String;
    :catch_4
    move-exception v28

    move-object/from16 v5, v46

    .end local v46           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v5       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object/from16 v48, v49

    .end local v49           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v48       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    goto :goto_9

    .line 808
    .end local v15           #attr:Ljava/lang/String;
    .end local v26           #codeArr:[Ljava/lang/String;
    .end local v27           #codes:Ljava/lang/String;
    .end local v30           #i:I
    .end local v35           #labelArr:[Ljava/lang/String;
    .end local v36           #labels:Ljava/lang/String;
    .end local v38           #longlabelArr:[Ljava/lang/String;
    .end local v39           #longlables:Ljava/lang/String;
    .end local v50           #splitter:Ljava/lang/String;
    :catch_5
    move-exception v28

    goto/16 :goto_5

    .end local v5           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .end local v48           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v15       #attr:Ljava/lang/String;
    .restart local v26       #codeArr:[Ljava/lang/String;
    .restart local v27       #codes:Ljava/lang/String;
    .restart local v30       #i:I
    .restart local v35       #labelArr:[Ljava/lang/String;
    .restart local v36       #labels:Ljava/lang/String;
    .restart local v38       #longlabelArr:[Ljava/lang/String;
    .restart local v39       #longlables:Ljava/lang/String;
    .restart local v46       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v49       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v50       #splitter:Ljava/lang/String;
    :catch_6
    move-exception v28

    move-object/from16 v5, v46

    .end local v46           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v5       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object/from16 v48, v49

    .end local v49           #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v48       #softKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    goto/16 :goto_5
.end method

.method public loadSkbTemplate(I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;
    .locals 36
    .parameter "resourceId"

    .prologue
    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    if-eqz v34, :cond_0

    if-nez p1, :cond_1

    .line 414
    :cond_0
    const/16 v34, 0x0

    .line 535
    :goto_0
    return-object v34

    .line 416
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mResources:Landroid/content/res/Resources;

    move-object/from16 v28, v0

    .line 417
    .local v28, r:Landroid/content/res/Resources;
    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v32

    .line 419
    .local v32, xrp:Landroid/content/res/XmlResourceParser;
    new-instance v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v4, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 420
    .local v4, attrDef:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    new-instance v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v5, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 421
    .local v5, attrKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    new-instance v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v6, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;Landroid/content/res/XmlResourceParser;)V

    .line 423
    .local v6, attrKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;
    new-instance v34, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v0, v34

    move/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    .line 424
    const/16 v26, -0x1

    .line 425
    .local v26, lastKeyTypeId:I
    const/16 v16, 0x0

    .line 426
    .local v16, globalColor:I
    const/16 v18, 0x0

    .line 427
    .local v18, globalColorHl:I
    const/16 v17, 0x0

    .line 429
    .local v17, globalColorBalloon:I
    :try_start_0
    invoke-interface/range {v32 .. v32}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    .line 430
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_12

    .line 431
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mNextEventFetched:Z

    .line 432
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I

    move/from16 v34, v0

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_5

    .line 433
    invoke-interface/range {v32 .. v32}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 434
    .local v7, attribute:Ljava/lang/String;
    const-string v34, "skb_template"

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v34

    if-nez v34, :cond_6

    .line 436
    const-string v34, "balloon_bg"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 438
    .local v8, balloonBg:Landroid/graphics/drawable/Drawable;
    const-string v34, "popup_bg"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    .line 440
    .local v27, popupBg:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_3

    if-nez v27, :cond_4

    .line 442
    :cond_3
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 445
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->setPopupBackground(Landroid/graphics/drawable/Drawable;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->setKeyBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 448
    const-string v34, "key_xmargin"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v31

    .line 449
    .local v31, xMargin:F
    const-string v34, "key_ymargin"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v33

    .line 450
    .local v33, yMargin:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->setMargins(FF)V

    .line 453
    const-string v34, "color"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v16

    .line 454
    const-string v34, "color_highlight"

    const/16 v35, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v18

    .line 456
    const-string v34, "color_balloon"

    const/16 v35, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v17

    .line 526
    .end local v7           #attribute:Ljava/lang/String;
    .end local v8           #balloonBg:Landroid/graphics/drawable/Drawable;
    .end local v27           #popupBg:Landroid/graphics/drawable/Drawable;
    .end local v31           #xMargin:F
    .end local v33           #yMargin:F
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mNextEventFetched:Z

    move/from16 v34, v0

    if-nez v34, :cond_2

    invoke-interface/range {v32 .. v32}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mXmlEventType:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 530
    :catch_0
    move-exception v15

    .line 531
    .local v15, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v34, "XmlKeyboardLoader"

    const-string v35, "Ill-formatted keyboard template resource file"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .end local v15           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 458
    .restart local v7       #attribute:Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v34, "key_type"

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v34

    if-nez v34, :cond_9

    .line 459
    const-string v34, "id"

    const/16 v35, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v22

    .line 460
    .local v22, id:I
    const-string v34, "bg"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 461
    .local v11, bg:Landroid/graphics/drawable/Drawable;
    const-string v34, "hlbg"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 463
    .local v19, hlBg:Landroid/graphics/drawable/Drawable;
    const-string v34, "color"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v12

    .line 464
    .local v12, color:I
    const-string v34, "color_highlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v14

    .line 466
    .local v14, colorHl:I
    const-string v34, "color_balloon"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v13

    .line 468
    .local v13, colorBalloon:I
    add-int/lit8 v34, v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v34

    if-eq v0, v1, :cond_7

    .line 469
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 471
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v11, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->createKeyType(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    move-result-object v25

    .line 473
    .local v25, keyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;
    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v14, v13}, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->setColors(III)V

    .line 476
    const-string v34, "balloon_width"

    const/high16 v35, -0x4080

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v10

    .line 477
    .local v10, balloonWidth:F
    const-string v34, "balloon_height"

    const/high16 v35, -0x4080

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v9

    .line 478
    .local v9, balloonHeight:F
    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v9}, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->setBalloonSize(FF)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->addKeyType(Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;)Z

    move-result v34

    if-nez v34, :cond_8

    .line 481
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 483
    :cond_8
    move/from16 v26, v22

    .line 484
    goto/16 :goto_2

    .end local v9           #balloonHeight:F
    .end local v10           #balloonWidth:F
    .end local v11           #bg:Landroid/graphics/drawable/Drawable;
    .end local v12           #color:I
    .end local v13           #colorBalloon:I
    .end local v14           #colorHl:I
    .end local v19           #hlBg:Landroid/graphics/drawable/Drawable;
    .end local v22           #id:I
    .end local v25           #keyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;
    :cond_9
    const-string v34, "key_icon"

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v34

    if-nez v34, :cond_a

    .line 485
    const-string v34, "code"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v23

    .line 486
    .local v23, keyCode:I
    const-string v34, "icon"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 487
    .local v20, icon:Landroid/graphics/drawable/Drawable;
    const-string v34, "icon_popup"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 489
    .local v21, iconPopup:Landroid/graphics/drawable/Drawable;
    if-eqz v20, :cond_5

    if-eqz v21, :cond_5

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v23

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->addDefaultKeyIcons(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 532
    .end local v7           #attribute:Ljava/lang/String;
    .end local v20           #icon:Landroid/graphics/drawable/Drawable;
    .end local v21           #iconPopup:Landroid/graphics/drawable/Drawable;
    .end local v23           #keyCode:I
    :catch_1
    move-exception v15

    .line 533
    .local v15, e:Ljava/io/IOException;
    const-string v34, "XmlKeyboardLoader"

    const-string v35, "Unable to keyboard template resource file"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 493
    .end local v15           #e:Ljava/io/IOException;
    .restart local v7       #attribute:Ljava/lang/String;
    :cond_a
    :try_start_2
    const-string v34, "key"

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v34

    if-nez v34, :cond_e

    .line 494
    const-string v34, "id"

    const/16 v35, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v24

    .line 495
    .local v24, keyId:I
    const/16 v34, -0x1

    move/from16 v0, v34

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    const/16 v34, 0x0

    goto/16 :goto_0

    .line 497
    :cond_b
    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->getAttributes(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Z

    move-result v34

    if-nez v34, :cond_c

    .line 498
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 502
    :cond_c
    const-string v34, "start_pos_x"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    .line 503
    const-string v34, "start_pos_y"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    .line 505
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getSoftKey(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v29

    .line 506
    .local v29, softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    if-nez v29, :cond_d

    const/16 v34, 0x0

    goto/16 :goto_0

    .line 507
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v24

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->addDefaultKey(ILcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto/16 :goto_2

    .line 508
    .end local v24           #keyId:I
    .end local v29           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_e
    const-string v34, "keyview"

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v34

    if-nez v34, :cond_5

    .line 509
    const-string v34, "id"

    const/16 v35, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v24

    .line 510
    .restart local v24       #keyId:I
    const/16 v34, -0x1

    move/from16 v0, v34

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    const/16 v34, 0x0

    goto/16 :goto_0

    .line 512
    :cond_f
    invoke-virtual {v6, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;->getAttributes(Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Z

    move-result v34

    if-nez v34, :cond_10

    .line 513
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 517
    :cond_10
    const-string v34, "start_pos_x"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyXPos:F

    .line 518
    const-string v34, "start_pos_y"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mKeyYPos:F

    .line 520
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->getSoftKeyView(Landroid/content/res/XmlResourceParser;Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader$KeyCommonAttributes;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;

    move-result-object v30

    .line 521
    .local v30, softKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    if-nez v30, :cond_11

    const/16 v34, 0x0

    goto/16 :goto_0

    .line 522
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v24

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->addDefaultKeyView(ILcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;)V

    goto/16 :goto_2

    .line 528
    .end local v7           #attribute:Ljava/lang/String;
    .end local v24           #keyId:I
    .end local v30           #softKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    :cond_12
    invoke-interface/range {v32 .. v32}, Landroid/content/res/XmlResourceParser;->close()V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbXmlLoader;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    move-object/from16 v34, v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
