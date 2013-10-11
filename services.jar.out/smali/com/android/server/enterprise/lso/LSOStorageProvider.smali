.class public Lcom/android/server/enterprise/lso/LSOStorageProvider;
.super Lcom/android/server/enterprise/storage/EdmStorageProvider;
.source "LSOStorageProvider.java"


# static fields
.field private static final INVALID_ROW_ID:I = -0x1

.field private static final LSO_FEATURE_OVERLAY:Ljava/lang/String; = "LOCKSCREEN_OVERLAY"

.field private static final LSO_FEATURE_WALLPAPER:Ljava/lang/String; = "LOCKSCREEN_WALLPAPER"

.field private static final LSO_ITEM_ATTRIBUTES:I = 0xf

.field private static final LSO_ITEM_BG_COLOR:I = 0x6

.field private static final LSO_ITEM_GRAVITY:I = 0x7

.field private static final LSO_ITEM_HEIGHT:I = 0x4

.field private static final LSO_ITEM_ID:I = 0x2

.field private static final LSO_ITEM_IMG_PATH:I = 0x9

.field private static final LSO_ITEM_IMG_URL:I = 0xc

.field private static final LSO_ITEM_LAYER:I = 0x10

.field private static final LSO_ITEM_ORIENTATION:I = 0xd

.field private static final LSO_ITEM_PACKAGE_NAME:I = 0xe

.field private static final LSO_ITEM_PARENT_ID:I = 0x11

.field private static final LSO_ITEM_POLLING_INTERVAL:I = 0x8

.field private static final LSO_ITEM_ROWID:I = 0x0

.field private static final LSO_ITEM_SCALE_TYPE:I = 0xa

.field private static final LSO_ITEM_TEXT:I = 0x9

.field private static final LSO_ITEM_TXT_COLOR:I = 0x8

.field private static final LSO_ITEM_TXT_SIZE:I = 0xb

.field private static final LSO_ITEM_TXT_STYLE:I = 0xa

.field private static final LSO_ITEM_TYPE:I = 0x1

.field private static final LSO_ITEM_WEIGHT:I = 0x5

.field private static final LSO_ITEM_WIDTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LSO"

.field private static final tblColumns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Item_RowId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Item_Type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Item_Id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Item_Width"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Item_Height"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Item_Weight"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Item_Bg_Color"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Item_Gravity"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Item_TxtColor_or_PollingInterval"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Item_Txt_or_ImgPath"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Item_TxtStyle_or_ScaleType"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Item_TxtSize"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Item_Url"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Item_Orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Item_PackageName"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Item_Attributes"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Item_Layer"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Item_ParentId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method private constructContentValues(Landroid/app/enterprise/lso/LSOItemData;IJ)Landroid/content/ContentValues;
    .locals 13
    .parameter "lsoData"
    .parameter "layer"
    .parameter "parentId"

    .prologue
    .line 568
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 569
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v8

    .line 570
    .local v8, lsoType:B
    const/4 v2, 0x0

    .line 572
    .local v2, error:Z
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x10

    aget-object v10, v10, v11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x11

    aget-object v10, v10, v11

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 574
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 576
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getUpdatedFields()[I

    move-result-object v5

    .line 577
    .local v5, lsoFields:[I
    if-eqz v5, :cond_0

    array-length v10, v5

    if-nez v10, :cond_1

    :cond_0
    move-object v1, v0

    .line 686
    .end local v0           #cv:Landroid/content/ContentValues;
    .local v1, cv:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 581
    .end local v1           #cv:Ljava/lang/Object;
    .restart local v0       #cv:Landroid/content/ContentValues;
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v10, v5

    if-ge v3, v10, :cond_3

    if-nez v2, :cond_3

    .line 582
    aget v10, v5, v3

    sparse-switch v10, :sswitch_data_0

    .line 612
    packed-switch v8, :pswitch_data_0

    .line 674
    const/4 v2, 0x1

    .line 675
    const-string v10, "LSO"

    const-string v11, "unknown LSOItem"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 584
    :sswitch_0
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 588
    :sswitch_1
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 592
    :sswitch_2
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x4

    aget-object v10, v10, v11

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 596
    :sswitch_3
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x5

    aget-object v10, v10, v11

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getWeight()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_2

    .line 600
    :sswitch_4
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x6

    aget-object v10, v10, v11

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getBgColor()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 604
    :sswitch_5
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v11, 0x7

    aget-object v10, v10, v11

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getGravity()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 608
    :sswitch_6
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xf

    aget-object v10, v10, v11

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getAttrs()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/enterprise/lso/LSOAttributeSet;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_2

    :pswitch_0
    move-object v7, p1

    .line 614
    check-cast v7, Landroid/app/enterprise/lso/LSOItemText;

    .line 615
    .local v7, lsoText:Landroid/app/enterprise/lso/LSOItemText;
    aget v10, v5, v3

    sparse-switch v10, :sswitch_data_1

    goto :goto_2

    .line 617
    :sswitch_7
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x9

    aget-object v10, v10, v11

    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemText;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 620
    :sswitch_8
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x8

    aget-object v10, v10, v11

    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemText;->getTextColor()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 623
    :sswitch_9
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xa

    aget-object v10, v10, v11

    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemText;->getTextStyle()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 626
    :sswitch_a
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xb

    aget-object v10, v10, v11

    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemText;->getTextSizeAsFloat()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_2

    .end local v7           #lsoText:Landroid/app/enterprise/lso/LSOItemText;
    :pswitch_1
    move-object v6, p1

    .line 633
    check-cast v6, Landroid/app/enterprise/lso/LSOItemImage;

    .line 634
    .local v6, lsoImage:Landroid/app/enterprise/lso/LSOItemImage;
    aget v10, v5, v3

    sparse-switch v10, :sswitch_data_2

    goto/16 :goto_2

    .line 636
    :sswitch_b
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x9

    aget-object v10, v10, v11

    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 639
    :sswitch_c
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xa

    aget-object v10, v10, v11

    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemImage;->getScaleTypeAsInteger()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 643
    :sswitch_d
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xc

    aget-object v10, v10, v11

    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemImage;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x8

    aget-object v10, v10, v11

    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemImage;->getPollingInterval()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    .end local v6           #lsoImage:Landroid/app/enterprise/lso/LSOItemImage;
    :pswitch_2
    move-object v4, p1

    .line 651
    check-cast v4, Landroid/app/enterprise/lso/LSOItemContainer;

    .line 652
    .local v4, lsoContainer:Landroid/app/enterprise/lso/LSOItemContainer;
    aget v10, v5, v3

    sparse-switch v10, :sswitch_data_3

    goto/16 :goto_2

    .line 658
    :sswitch_e
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xd

    aget-object v11, v10, v11

    invoke-virtual {v4}, Landroid/app/enterprise/lso/LSOItemContainer;->getOrientation()Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    move-result-object v10

    sget-object v12, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->VERTICAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    if-ne v10, v12, :cond_2

    const/4 v10, 0x0

    :goto_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 654
    :sswitch_f
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0x9

    aget-object v10, v10, v11

    invoke-virtual {v4}, Landroid/app/enterprise/lso/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 658
    :cond_2
    const/4 v10, 0x1

    goto :goto_3

    .end local v4           #lsoContainer:Landroid/app/enterprise/lso/LSOItemContainer;
    :pswitch_3
    move-object v9, p1

    .line 665
    check-cast v9, Landroid/app/enterprise/lso/LSOItemWidget;

    .line 666
    .local v9, lsoWidget:Landroid/app/enterprise/lso/LSOItemWidget;
    aget v10, v5, v3

    packed-switch v10, :pswitch_data_1

    goto/16 :goto_2

    .line 668
    :pswitch_4
    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v11, 0xe

    aget-object v10, v10, v11

    invoke-virtual {v9}, Landroid/app/enterprise/lso/LSOItemWidget;->getWidget()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 682
    .end local v9           #lsoWidget:Landroid/app/enterprise/lso/LSOItemWidget;
    :cond_3
    if-eqz v2, :cond_4

    .line 683
    const/4 v0, 0x0

    :cond_4
    move-object v1, v0

    .line 686
    .restart local v1       #cv:Ljava/lang/Object;
    goto/16 :goto_0

    .line 582
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
    .end sparse-switch

    .line 612
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 615
    :sswitch_data_1
    .sparse-switch
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_a
        0x400 -> :sswitch_9
    .end sparse-switch

    .line 634
    :sswitch_data_2
    .sparse-switch
        0x80 -> :sswitch_b
        0x100 -> :sswitch_d
        0x200 -> :sswitch_c
    .end sparse-switch

    .line 652
    :sswitch_data_3
    .sparse-switch
        0x80 -> :sswitch_e
        0x100 -> :sswitch_f
    .end sparse-switch

    .line 666
    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_4
    .end packed-switch
.end method

.method private deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 4
    .parameter "sTableName"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 502
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p2, :cond_0

    .line 503
    const-string v1, "LSO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 505
    :cond_0
    const-string v1, "LSO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAdminUid(Ljava/lang/String;)I
    .locals 4
    .parameter "feature"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const-string v2, "ADMIN_REF"

    const-string v3, "policyName"

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 143
    .local v0, adminUid:I
    const-string v1, "LSO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Configured admin UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return v0
.end method

.method private insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6
    .parameter "sTableName"
    .parameter "cv"

    .prologue
    .line 485
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert record: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 487
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 488
    .local v1, row_id:J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 489
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Failed to insert record - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 492
    :cond_0
    return-wide v1
.end method

.method private loadContainerData(Landroid/app/enterprise/lso/LSOItemContainer;Landroid/database/Cursor;)V
    .locals 11
    .parameter "lsoData"
    .parameter "cursor"

    .prologue
    .line 433
    const/16 v6, 0x9

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, img:Ljava/lang/String;
    const/16 v6, 0xd

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 436
    .local v5, val:I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 437
    invoke-virtual {p1, v2}, Landroid/app/enterprise/lso/LSOItemContainer;->setBGImage(Ljava/lang/String;)V

    .line 438
    :cond_0
    if-eqz v5, :cond_1

    .line 439
    sget-object v6, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->HORIZONTAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    invoke-virtual {p1, v6}, Landroid/app/enterprise/lso/LSOItemContainer;->setOrientation(Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;)V

    .line 441
    :cond_1
    const-string v6, "LSO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LoadContainerData -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemContainer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 443
    .local v1, id:I
    iget-object v6, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const-string v7, "LOCKSCREEN_OVERLAY"

    const-string v8, "Item_ParentId"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 445
    .local v0, containerCursor:Landroid/database/Cursor;
    if-nez v0, :cond_2

    .line 467
    :goto_0
    return-void

    .line 449
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_3

    .line 450
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 454
    :cond_3
    const/4 v4, 0x0

    .line 455
    .local v4, type:B
    :cond_4
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 456
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-byte v4, v6

    .line 458
    invoke-static {v4}, Landroid/app/enterprise/lso/LSOItemCreator;->createItem(B)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v3

    .line 459
    .local v3, lsoChildData:Landroid/app/enterprise/lso/LSOItemData;
    if-eqz v3, :cond_4

    .line 462
    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadItemData(Landroid/app/enterprise/lso/LSOItemData;Landroid/database/Cursor;)V

    .line 463
    invoke-virtual {p1, v3}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    goto :goto_1

    .line 466
    .end local v3           #lsoChildData:Landroid/app/enterprise/lso/LSOItemData;
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private loadImageData(Landroid/app/enterprise/lso/LSOItemImage;Landroid/database/Cursor;)V
    .locals 6
    .parameter "lsoData"
    .parameter "cursor"

    .prologue
    .line 414
    const/16 v3, 0x9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, img:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 417
    invoke-virtual {p1, v0}, Landroid/app/enterprise/lso/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    .line 419
    const/16 v3, 0xa

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 420
    .local v2, val:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 421
    invoke-virtual {p1, v2}, Landroid/app/enterprise/lso/LSOItemImage;->setScaleType(I)V

    .line 423
    :cond_0
    const/16 v3, 0x8

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 424
    .local v1, pollingPeriod:I
    const/16 v3, 0xc

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    int-to-long v3, v1

    invoke-virtual {p1, v0, v3, v4}, Landroid/app/enterprise/lso/LSOItemImage;->setURL(Ljava/lang/String;J)V

    .line 429
    .end local v1           #pollingPeriod:I
    .end local v2           #val:I
    :cond_1
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadImageData -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemImage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method private loadItemData(Landroid/app/enterprise/lso/LSOItemData;Landroid/database/Cursor;)V
    .locals 7
    .parameter "lsoData"
    .parameter "cursor"

    .prologue
    const/4 v6, -0x1

    const/16 v5, -0x63

    .line 339
    const/4 v4, 0x2

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, strVal:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 341
    invoke-virtual {p1, v2}, Landroid/app/enterprise/lso/LSOItemData;->setId(Ljava/lang/String;)V

    .line 343
    :cond_0
    const/4 v4, 0x3

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 344
    .local v3, val:I
    if-eq v3, v5, :cond_1

    .line 345
    invoke-virtual {p1, v3}, Landroid/app/enterprise/lso/LSOItemData;->setWidth(I)V

    .line 347
    :cond_1
    const/4 v4, 0x4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 348
    if-eq v3, v5, :cond_2

    .line 349
    invoke-virtual {p1, v3}, Landroid/app/enterprise/lso/LSOItemData;->setHeight(I)V

    .line 351
    :cond_2
    const/4 v4, 0x5

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    .line 352
    .local v1, fVal:F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_3

    .line 353
    invoke-virtual {p1, v1}, Landroid/app/enterprise/lso/LSOItemData;->setWeight(F)V

    .line 355
    :cond_3
    const/4 v4, 0x6

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 356
    if-eq v3, v6, :cond_4

    .line 357
    invoke-virtual {p1, v3}, Landroid/app/enterprise/lso/LSOItemData;->setBgColor(I)V

    .line 359
    :cond_4
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 360
    const-string v4, "LSO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LoadItemData -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .end local p1
    :goto_0
    return-void

    .line 364
    .restart local p1
    :cond_5
    const/4 v4, 0x7

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 365
    if-eq v3, v6, :cond_6

    .line 366
    invoke-virtual {p1, v3}, Landroid/app/enterprise/lso/LSOItemData;->setGravity(I)V

    .line 368
    :cond_6
    const/16 v4, 0xf

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 369
    .local v0, bytes:[B
    if-eqz v0, :cond_7

    .line 370
    invoke-static {v0}, Landroid/app/enterprise/lso/LSOAttributeSet;->fromByteArray([B)Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/app/enterprise/lso/LSOItemData;->setAttrs(Landroid/app/enterprise/lso/LSOAttributeSet;)V

    .line 373
    :cond_7
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 375
    :pswitch_0
    check-cast p1, Landroid/app/enterprise/lso/LSOItemText;

    .end local p1
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadTextData(Landroid/app/enterprise/lso/LSOItemText;Landroid/database/Cursor;)V

    goto :goto_0

    .line 379
    .restart local p1
    :pswitch_1
    check-cast p1, Landroid/app/enterprise/lso/LSOItemImage;

    .end local p1
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadImageData(Landroid/app/enterprise/lso/LSOItemImage;Landroid/database/Cursor;)V

    goto :goto_0

    .line 383
    .restart local p1
    :pswitch_2
    check-cast p1, Landroid/app/enterprise/lso/LSOItemContainer;

    .end local p1
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadContainerData(Landroid/app/enterprise/lso/LSOItemContainer;Landroid/database/Cursor;)V

    goto :goto_0

    .line 387
    .restart local p1
    :pswitch_3
    check-cast p1, Landroid/app/enterprise/lso/LSOItemWidget;

    .end local p1
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadWidgetData(Landroid/app/enterprise/lso/LSOItemWidget;Landroid/database/Cursor;)V

    goto :goto_0

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private loadTextData(Landroid/app/enterprise/lso/LSOItemText;Landroid/database/Cursor;)V
    .locals 6
    .parameter "lsoData"
    .parameter "cursor"

    .prologue
    const/4 v4, -0x1

    .line 394
    const/16 v3, 0x9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    invoke-virtual {p1, v1}, Landroid/app/enterprise/lso/LSOItemText;->setText(Ljava/lang/String;)V

    .line 398
    :cond_0
    const/16 v3, 0x8

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 399
    .local v2, val:I
    if-eq v2, v4, :cond_1

    .line 400
    invoke-virtual {p1, v2}, Landroid/app/enterprise/lso/LSOItemText;->setTextColor(I)V

    .line 402
    :cond_1
    const/16 v3, 0xa

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 403
    if-eq v2, v4, :cond_2

    .line 404
    invoke-virtual {p1, v2}, Landroid/app/enterprise/lso/LSOItemText;->setTextStyle(I)V

    .line 406
    :cond_2
    const/16 v3, 0xb

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    .line 407
    .local v0, fVal:F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_3

    .line 408
    invoke-virtual {p1, v0}, Landroid/app/enterprise/lso/LSOItemText;->setTextSize(F)V

    .line 410
    :cond_3
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadTextData -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemText;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method private loadWidgetData(Landroid/app/enterprise/lso/LSOItemWidget;Landroid/database/Cursor;)V
    .locals 4
    .parameter "lsoData"
    .parameter "cursor"

    .prologue
    .line 471
    const/16 v1, 0xe

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, pkgName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {p1, v0}, Landroid/app/enterprise/lso/LSOItemWidget;->setWidget(Ljava/lang/String;)V

    .line 476
    :cond_0
    const-string v1, "LSO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadWidgetData -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemWidget;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method private setOverlayData(Landroid/app/enterprise/lso/LSOItemData;IJ)Z
    .locals 10
    .parameter "lsoData"
    .parameter "layer"
    .parameter "parentId"

    .prologue
    const/4 v4, 0x0

    .line 532
    if-nez p1, :cond_1

    .line 564
    :cond_0
    :goto_0
    return v4

    .line 536
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->constructContentValues(Landroid/app/enterprise/lso/LSOItemData;IJ)Landroid/content/ContentValues;

    move-result-object v0

    .line 537
    .local v0, cv:Landroid/content/ContentValues;
    if-nez v0, :cond_2

    .line 538
    const-string v7, "LSO"

    const-string v8, "Cannot construct content values"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 542
    :cond_2
    const-string v7, "LOCKSCREEN_OVERLAY"

    invoke-direct {p0, v7, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 543
    .local v5, row_id:J
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_0

    .line 547
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v3

    .line 548
    .local v3, item_type:B
    const/4 v7, 0x4

    if-eq v3, v7, :cond_3

    .line 549
    const/4 v4, 0x1

    goto :goto_0

    .line 552
    :cond_3
    const/4 v0, 0x0

    .line 553
    const/4 v4, 0x1

    .local v4, result:Z
    move-object v2, p1

    .line 554
    check-cast v2, Landroid/app/enterprise/lso/LSOItemContainer;

    .line 555
    .local v2, itemContainer:Landroid/app/enterprise/lso/LSOItemContainer;
    const/4 v1, 0x0

    .line 556
    .local v1, i:I
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/app/enterprise/lso/LSOItemContainer;->getNumItems()I

    move-result v7

    if-ge v1, v7, :cond_4

    if-eqz v4, :cond_4

    .line 557
    invoke-virtual {v2, v1}, Landroid/app/enterprise/lso/LSOItemContainer;->getItem(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v7

    invoke-direct {p0, v7, p2, v5, v6}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(Landroid/app/enterprise/lso/LSOItemData;IJ)Z

    move-result v4

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 560
    :cond_4
    if-nez v4, :cond_0

    .line 561
    const-string v7, "LSO"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to store LSOItemData for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with ParendId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateRecord(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "sTableName"
    .parameter "cv"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 517
    const-string v2, "LSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insert/Update record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 520
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 521
    .local v1, rowsAffected:I
    const-string v2, "LSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of rows updated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    if-gtz v1, :cond_0

    .line 524
    const-string v2, "LSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Failed to insert record - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 528
    :cond_0
    return v1
.end method

.method private wipeLayerData(I)V
    .locals 5
    .parameter "layer"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 211
    if-nez p1, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const-string v3, "LOCKSCREEN_OVERLAY"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->remove(Ljava/lang/String;)Z

    .line 223
    :goto_0
    const-string v2, "LSO"

    const-string v3, "LOCKSCREEN_OVERLAY - cleaned"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void

    .line 214
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "Item_Layer"

    aput-object v2, v0, v3

    .line 217
    .local v0, sColumns:[Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 220
    .local v1, sValues:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const-string v3, "LOCKSCREEN_OVERLAY"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public getAdminPref()Landroid/app/enterprise/lso/LSOAttributeSet;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 148
    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "policyName"

    aput-object v6, v5, v8

    .line 151
    .local v5, whereColums:[Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    const-string v6, "LOCKSCREEN_OVERLAY"

    aput-object v6, v4, v8

    .line 154
    .local v4, whereArgs:[Ljava/lang/String;
    new-array v3, v7, [Ljava/lang/String;

    const-string v6, "accountObject"

    aput-object v6, v3, v8

    .line 157
    .local v3, resultColumns:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const-string v7, "ADMIN_REF"

    invoke-virtual {v6, v7, v5, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 160
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 161
    const/4 v2, 0x0

    .line 173
    :cond_0
    :goto_0
    return-object v2

    .line 164
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 165
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 166
    .local v0, buffer:[B
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, pref:Landroid/app/enterprise/lso/LSOAttributeSet;
    if-eqz v0, :cond_0

    .line 170
    invoke-static {v0}, Landroid/app/enterprise/lso/LSOAttributeSet;->fromByteArray([B)Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v2

    goto :goto_0
.end method

.method public getCount(Ljava/lang/String;)I
    .locals 6
    .parameter "tableName"

    .prologue
    const/4 v0, 0x0

    .line 117
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 118
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(*) from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 119
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 129
    :goto_0
    return v0

    .line 123
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 124
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 126
    .local v0, count:I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 128
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCount("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOverlay(I)Landroid/app/enterprise/lso/LSOItemData;
    .locals 10
    .parameter "layer"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 304
    new-array v4, v8, [Ljava/lang/String;

    const-string v6, "Item_ParentId"

    aput-object v6, v4, v7

    const-string v6, "Item_Layer"

    aput-object v6, v4, v9

    .line 307
    .local v4, whereCols:[Ljava/lang/String;
    new-array v3, v8, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v3, v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    .line 310
    .local v3, whereArgs:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    const-string v7, "LOCKSCREEN_OVERLAY"

    sget-object v8, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    invoke-virtual {v6, v7, v4, v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 312
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 313
    const-string v6, "LSO"

    const-string v7, "No record found in LOCKSCREEN_OVERLAY"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 335
    :goto_0
    return-object v1

    .line 316
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 317
    const-string v6, "LSO"

    const-string v7, "No record found in LOCKSCREEN_OVERLAY"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v1, v5

    .line 319
    goto :goto_0

    .line 322
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 324
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-byte v2, v6

    .line 325
    .local v2, type:B
    invoke-static {v2}, Landroid/app/enterprise/lso/LSOItemCreator;->createItem(B)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v1

    .line 327
    .local v1, lsoData:Landroid/app/enterprise/lso/LSOItemData;
    if-nez v1, :cond_2

    .line 328
    const-string v6, "LSO"

    const-string v7, "Invalid Item type"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 329
    goto :goto_0

    .line 332
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadItemData(Landroid/app/enterprise/lso/LSOItemData;Landroid/database/Cursor;)V

    .line 334
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getOverlayAdminUid()I
    .locals 1

    .prologue
    .line 133
    const-string v0, "LOCKSCREEN_OVERLAY"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWallpaperAdminUid()I
    .locals 1

    .prologue
    .line 137
    const-string v0, "LOCKSCREEN_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 113
    const-string v0, "LOCKSCREEN_OVERLAY"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCount(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetOverlayData(I)V
    .locals 3
    .parameter "layer"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->wipeLayerData(I)V

    .line 229
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LOCKSCREEN_OVERLAY"

    aput-object v2, v0, v1

    .line 234
    .local v0, whereArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    const-string v1, "ADMIN_REF"

    const-string v2, "policyName=?"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 239
    :cond_0
    const-string v1, "LSO"

    const-string v2, "LOCKSCREEN_OVERLAY - resetted"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public resetWallpaperData()V
    .locals 3

    .prologue
    .line 243
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LOCKSCREEN_WALLPAPER"

    aput-object v2, v0, v1

    .line 246
    .local v0, whereArgs:[Ljava/lang/String;
    const-string v1, "ADMIN_REF"

    const-string v2, "policyName=?"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 248
    const-string v1, "LSO"

    const-string v2, "LOCKSCREEN_WALLPAPER - resetted"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public setOverlayData(JLandroid/app/enterprise/lso/LSOItemData;ILandroid/app/enterprise/lso/LSOAttributeSet;)Z
    .locals 8
    .parameter "adminUID"
    .parameter "lsoData"
    .parameter "layer"
    .parameter "pref"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    .line 253
    if-eqz p3, :cond_0

    cmp-long v4, p1, v6

    if-nez v4, :cond_1

    .line 254
    :cond_0
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "Parameter cannot be null"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v1

    .line 258
    .local v1, overlayAdminUID:I
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->wipeLayerData(I)V

    .line 260
    const-wide/16 v4, 0x0

    invoke-direct {p0, p3, p4, v4, v5}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(Landroid/app/enterprise/lso/LSOItemData;IJ)Z

    move-result v2

    .line 261
    .local v2, result:Z
    if-nez v2, :cond_3

    .line 262
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    .line 278
    :cond_2
    :goto_0
    return v2

    .line 264
    :cond_3
    int-to-long v4, v1

    cmp-long v4, v4, p1

    if-eqz v4, :cond_2

    .line 265
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 266
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "policyName"

    const-string v5, "LOCKSCREEN_OVERLAY"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v4, "adminUid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    if-eqz p5, :cond_4

    .line 269
    const-string v4, "accountObject"

    invoke-virtual {p5}, Landroid/app/enterprise/lso/LSOAttributeSet;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 272
    :cond_4
    const-string v4, "ADMIN_REF"

    invoke-direct {p0, v4, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    .line 273
    :goto_1
    if-nez v2, :cond_2

    .line 274
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    goto :goto_0

    :cond_5
    move v2, v3

    .line 272
    goto :goto_1
.end method

.method public setWallpaperData(JLjava/lang/String;)Z
    .locals 6
    .parameter "adminUID"
    .parameter "imageFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 283
    if-eqz p3, :cond_0

    cmp-long v2, p1, v4

    if-nez v2, :cond_1

    .line 284
    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "Parameter cannot be null"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_1
    const/4 v1, 0x0

    .line 288
    .local v1, result:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 290
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 291
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "policyName"

    const-string v3, "LOCKSCREEN_WALLPAPER"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v2, "adminUid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 295
    const-string v2, "ADMIN_REF"

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 296
    :goto_0
    if-nez v1, :cond_2

    .line 297
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 300
    :cond_2
    return v1

    .line 295
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateAdminPref(Landroid/app/enterprise/lso/LSOAttributeSet;)Z
    .locals 7
    .parameter "pref"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 177
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 181
    const-string v4, "accountObject"

    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOAttributeSet;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 186
    :goto_0
    const-string v3, "policyName=?"

    .line 187
    .local v3, whereClause:Ljava/lang/String;
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "LOCKSCREEN_OVERLAY"

    aput-object v4, v2, v5

    .line 192
    .local v2, whereArgs:[Ljava/lang/String;
    const-string v4, "ADMIN_REF"

    invoke-direct {p0, v4, v0, v3, v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->updateRecord(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    .line 195
    .local v1, result:Z
    :goto_1
    return v1

    .line 183
    .end local v1           #result:Z
    .end local v2           #whereArgs:[Ljava/lang/String;
    .end local v3           #whereClause:Ljava/lang/String;
    :cond_0
    const-string v6, "accountObject"

    const/4 v4, 0x0

    check-cast v4, [B

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .restart local v2       #whereArgs:[Ljava/lang/String;
    .restart local v3       #whereClause:Ljava/lang/String;
    :cond_1
    move v1, v5

    .line 192
    goto :goto_1
.end method
