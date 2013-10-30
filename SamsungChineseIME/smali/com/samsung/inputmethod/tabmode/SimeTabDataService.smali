.class public Lcom/samsung/inputmethod/tabmode/SimeTabDataService;
.super Ljava/lang/Object;
.source "SimeTabDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/tabmode/SimeTabDataService$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MASK_KEEP_MODE:I = -0x1

.field private static final MAX_NUMBER_MODE_EDITLIST:I = 0x16

.field public static final MODE_MASK_CASE_LANGUAGE:I = 0xf0f0000

.field public static final MODE_MASK_CASE_NUM:I = -0xff1000

.field public static final MODE_MASK_CASE_SYMBOL:I = -0x1000000

.field public static final ModeListMap:[[I = null

.field private static final OTHER_LANGUAGES_TAG:I = -0x3

.field private static final SIMPLIFIED_CHINESE_TAG:I = -0x2

.field private static final SPLITTER:Ljava/lang/String; = "|"

.field public static final SpecialModeMap:[[I = null

.field private static final TAG:Ljava/lang/String; = "SimeTabDataService"

.field private static final TOOLS_TAG:I = -0x4

.field private static final TRADITION_CHINESE_TAG:I = -0x1

.field private static mInstance:Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

.field private static mIsDialogListInit:Z

.field private static mTotalEditListSize:I


# instance fields
.field public mClickedValue:[Z

.field public mDialogModeList:[[I

.field private mDialogModeListSep:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEditListSize:I

.field private mInputSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x4

    .line 28
    sput-boolean v5, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mIsDialogListInit:Z

    .line 86
    const/16 v0, 0x1c

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->ModeListMap:[[I

    .line 209
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v2, v4, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_20

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_21

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->SpecialModeMap:[[I

    return-void

    .line 86
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x2t 0x12t
        0x26t 0x0t 0xbt 0x7ft
        0x6dt 0x2t 0xbt 0x7ft
        0x6dt 0x2t 0xbt 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x2t 0x11t
        0x26t 0x0t 0xbt 0x7ft
        0x6et 0x2t 0xbt 0x7ft
        0x6et 0x2t 0xbt 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x5t 0x91t
        0x92t 0x2t 0xbt 0x7ft
        0x7bt 0x2t 0xbt 0x7ft
        0x7bt 0x2t 0xbt 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x5t 0xa1t
        0x92t 0x2t 0xbt 0x7ft
        0x7bt 0x2t 0xbt 0x7ft
        0x7bt 0x2t 0xbt 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x4t 0x21t
        0x93t 0x2t 0xbt 0x7ft
        0x7ct 0x2t 0xbt 0x7ft
        0x7ct 0x2t 0xbt 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x13t 0x11t
        0x22t 0x0t 0xbt 0x7ft
        0x70t 0x2t 0xbt 0x7ft
        0x70t 0x2t 0xbt 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x11t 0x11t
        0x20t 0x0t 0xbt 0x7ft
        0x73t 0x2t 0xbt 0x7ft
        0x73t 0x2t 0xbt 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0x2t 0x32t
        0x27t 0x0t 0xbt 0x7ft
        0x6ft 0x2t 0xbt 0x7ft
        0x80t 0x2t 0xbt 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x0t 0x0t 0x5t 0x32t
        0x94t 0x2t 0xbt 0x7ft
        0x7et 0x2t 0xbt 0x7ft
        0x7et 0x2t 0xbt 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0x0t 0x0t 0x4t 0x32t
        0x95t 0x2t 0xbt 0x7ft
        0x7ft 0x2t 0xbt 0x7ft
        0x7ft 0x2t 0xbt 0x7ft
    .end array-data

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x4t 0x22t
        0x93t 0x2t 0xbt 0x7ft
        0x7dt 0x2t 0xbt 0x7ft
        0x7dt 0x2t 0xbt 0x7ft
    .end array-data

    :array_b
    .array-data 0x4
        0x0t 0x0t 0x2t 0xc1t
        0x0t 0x0t 0x0t 0x0t
        0x71t 0x2t 0xbt 0x7ft
        0x71t 0x2t 0xbt 0x7ft
    .end array-data

    :array_c
    .array-data 0x4
        0x0t 0x80t 0x0t 0x61t
        0x0t 0x0t 0x0t 0x0t
        0x72t 0x2t 0xbt 0x7ft
        0x72t 0x2t 0xbt 0x7ft
    .end array-data

    :array_d
    .array-data 0x4
        0x0t 0x10t 0x1t 0x61t
        0x8ct 0x2t 0xbt 0x7ft
        0x74t 0x2t 0xbt 0x7ft
        0x74t 0x2t 0xbt 0x7ft
    .end array-data

    :array_e
    .array-data 0x4
        0x0t 0x1t 0x2t 0x33t
        0x8dt 0x2t 0xbt 0x7ft
        0x75t 0x2t 0xbt 0x7ft
        0x86t 0x2t 0xbt 0x7ft
    .end array-data

    :array_f
    .array-data 0x4
        0x0t 0x1t 0x5t 0x33t
        0x90t 0x2t 0xbt 0x7ft
        0x84t 0x2t 0xbt 0x7ft
        0x84t 0x2t 0xbt 0x7ft
    .end array-data

    :array_10
    .array-data 0x4
        0x0t 0x1t 0x4t 0x33t
        0x91t 0x2t 0xbt 0x7ft
        0x91t 0x2t 0xbt 0x7ft
        0x85t 0x2t 0xbt 0x7ft
        0x85t 0x2t 0xbt 0x7ft
    .end array-data

    :array_11
    .array-data 0x4
        0x0t 0x1t 0x1t 0x33t
        0x8et 0x2t 0xbt 0x7ft
        0x76t 0x2t 0xbt 0x7ft
        0x76t 0x2t 0xbt 0x7ft
    .end array-data

    :array_12
    .array-data 0x4
        0x0t 0x1t 0x3t 0x33t
        0x8ft 0x2t 0xbt 0x7ft
        0x77t 0x2t 0xbt 0x7ft
        0x77t 0x2t 0xbt 0x7ft
    .end array-data

    :array_13
    .array-data 0x4
        0x0t 0x1t 0x2t 0x34t
        0x8dt 0x2t 0xbt 0x7ft
        0x78t 0x2t 0xbt 0x7ft
        0x83t 0x2t 0xbt 0x7ft
    .end array-data

    :array_14
    .array-data 0x4
        0x0t 0x1t 0x5t 0x34t
        0x90t 0x2t 0xbt 0x7ft
        0x81t 0x2t 0xbt 0x7ft
        0x81t 0x2t 0xbt 0x7ft
    .end array-data

    :array_15
    .array-data 0x4
        0x0t 0x1t 0x4t 0x34t
        0x91t 0x2t 0xbt 0x7ft
        0x82t 0x2t 0xbt 0x7ft
        0x82t 0x2t 0xbt 0x7ft
    .end array-data

    :array_16
    .array-data 0x4
        0x0t 0x1t 0x1t 0x34t
        0x8et 0x2t 0xbt 0x7ft
        0x79t 0x2t 0xbt 0x7ft
        0x79t 0x2t 0xbt 0x7ft
    .end array-data

    :array_17
    .array-data 0x4
        0x0t 0x1t 0x3t 0x34t
        0x8ft 0x2t 0xbt 0x7ft
        0x7at 0x2t 0xbt 0x7ft
        0x7at 0x2t 0xbt 0x7ft
    .end array-data

    :array_18
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x87t 0x2t 0xbt 0x7ft
    .end array-data

    :array_19
    .array-data 0x4
        0xfet 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x88t 0x2t 0xbt 0x7ft
    .end array-data

    :array_1a
    .array-data 0x4
        0xfdt 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x89t 0x2t 0xbt 0x7ft
    .end array-data

    :array_1b
    .array-data 0x4
        0xfct 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x8at 0x2t 0xbt 0x7ft
    .end array-data

    .line 209
    :array_1c
    .array-data 0x4
        0x0t 0x0t 0x31t 0x11t
        0x0t 0x0t 0x11t 0x11t
    .end array-data

    :array_1d
    .array-data 0x4
        0x0t 0x0t 0x21t 0x11t
        0x0t 0x0t 0x11t 0x11t
    .end array-data

    :array_1e
    .array-data 0x4
        0x0t 0x20t 0x1t 0x61t
        0x0t 0x10t 0x1t 0x61t
    .end array-data

    :array_1f
    .array-data 0x4
        0x0t 0x10t 0x2t 0x61t
        0x0t 0x10t 0x1t 0x61t
    .end array-data

    :array_20
    .array-data 0x4
        0x0t 0x20t 0x2t 0x61t
        0x0t 0x10t 0x1t 0x61t
    .end array-data

    :array_21
    .array-data 0x4
        0x0t 0x0t 0x33t 0x11t
        0x0t 0x0t 0x13t 0x11t
    .end array-data

    :array_22
    .array-data 0x4
        0x0t 0x0t 0x4t 0x32t
        0x0t 0x0t 0x2t 0x32t
    .end array-data

    :array_23
    .array-data 0x4
        0x0t 0x0t 0x5t 0x32t
        0x0t 0x0t 0x2t 0x32t
    .end array-data

    :array_24
    .array-data 0x4
        0x0t 0x0t 0x5t 0xa1t
        0x0t 0x0t 0x5t 0x91t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v0, 0x16

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeListSep:Ljava/util/Vector;

    .line 70
    return-void
.end method

.method private convertHandWritingTypeTo(I)V
    .locals 14
    .parameter "newLayoutType"

    .prologue
    const/high16 v13, 0x400

    const/high16 v12, 0x300

    .line 873
    iget-object v10, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mInputSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-nez v10, :cond_1

    .line 954
    :cond_0
    return-void

    .line 876
    :cond_1
    if-eq p1, v13, :cond_2

    if-ne p1, v12, :cond_0

    .line 882
    :cond_2
    const/4 v3, 0x0

    .line 883
    .local v3, newInputMode:I
    const/4 v5, 0x0

    .line 885
    .local v5, oldInputMode:I
    const/4 v2, 0x0

    .line 886
    .local v2, isChecked:Z
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getTabBarOrder()Ljava/lang/String;

    move-result-object v7

    .line 887
    .local v7, order:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->decodeTabBarOrder(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v9

    .line 891
    .local v9, tabModeList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v10, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    array-length v10, v10

    if-ge v0, v10, :cond_0

    .line 892
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getDialogListMode(I)I

    move-result v5

    .line 896
    const/high16 v10, 0xf00

    and-int v6, v5, v10

    .line 897
    .local v6, oldLayout:I
    const v10, -0xf000001

    and-int v8, v5, v10

    .line 899
    .local v8, otherInfo:I
    if-eq v6, v12, :cond_4

    if-eq v6, v13, :cond_4

    .line 891
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 907
    :cond_4
    if-eq v6, p1, :cond_3

    .line 913
    sparse-switch v6, :sswitch_data_0

    .line 936
    :cond_5
    :goto_2
    if-eqz v3, :cond_3

    .line 940
    iget-object v10, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v10, v10, v0

    const/4 v11, 0x0

    aput v3, v10, v11

    .line 941
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->initCheckedtData()V

    .line 942
    iget-object v10, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mClickedValue:[Z

    aget-boolean v2, v10, v0

    .line 943
    if-eqz v2, :cond_3

    .line 944
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 945
    .local v1, index:I
    if-ltz v1, :cond_6

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v1, v10, :cond_6

    .line 946
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 948
    :cond_6
    invoke-static {v9}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->encodeTabBarOrder(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    .line 951
    .local v4, newOrder:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->setTabBarOrder(Ljava/lang/String;)V

    goto :goto_1

    .line 915
    .end local v1           #index:I
    .end local v4           #newOrder:Ljava/lang/String;
    :sswitch_0
    if-ne p1, v13, :cond_5

    .line 916
    or-int v3, v8, p1

    .line 917
    iget-object v10, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mInputSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v10}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v10

    if-ne v10, v5, :cond_5

    .line 918
    iget-object v10, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mInputSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v10, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_2

    .line 924
    :sswitch_1
    if-ne p1, v12, :cond_5

    .line 925
    or-int v3, v8, p1

    .line 926
    iget-object v10, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mInputSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v10}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v10

    if-ne v10, v5, :cond_5

    .line 927
    iget-object v10, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mInputSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v10, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_2

    .line 913
    :sswitch_data_0
    .sparse-switch
        0x3000000 -> :sswitch_0
        0x4000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeTabBarOrder(Ljava/lang/String;)Ljava/util/Vector;
    .locals 6
    .parameter "order"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 608
    .local v2, modeListInt:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 617
    :cond_0
    return-object v2

    .line 611
    :cond_1
    const-string v5, "|"

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 612
    .local v4, splitter:Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, modeListStr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 614
    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 615
    .local v1, mode:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static encodeTabBarOrder(Ljava/util/Vector;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, modeList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const-string v1, ""

    .line 599
    .local v1, modeOrder:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    :cond_0
    return-object v1
.end method

.method public static getInstance()Lcom/samsung/inputmethod/tabmode/SimeTabDataService;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mInstance:Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    invoke-direct {v0}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mInstance:Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    .line 76
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mInstance:Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    return-object v0
.end method

.method public static getListItemTextByMode(I)I
    .locals 4
    .parameter "modeId"

    .prologue
    .line 699
    const/4 v1, 0x0

    .line 700
    .local v1, itemResId:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->ModeListMap:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 701
    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->ModeListMap:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v2, p0, :cond_2

    .line 702
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 703
    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->ModeListMap:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x3

    aget v1, v2, v3

    .line 711
    :cond_0
    :goto_1
    return v1

    .line 705
    :cond_1
    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->ModeListMap:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x2

    aget v1, v2, v3

    .line 707
    goto :goto_1

    .line 700
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getModeByListItemText(I)I
    .locals 4
    .parameter "itemResId"

    .prologue
    .line 678
    const/4 v1, 0x0

    .line 679
    .local v1, modeId:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->ModeListMap:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 680
    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->ModeListMap:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x2

    aget v2, v2, v3

    if-ne v2, p0, :cond_0

    .line 681
    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->ModeListMap:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 679
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 684
    :cond_1
    return v1
.end method

.method public static getModeByTabTitle(I)I
    .locals 4
    .parameter "titleId"

    .prologue
    .line 633
    const/4 v1, 0x0

    .line 634
    .local v1, modeId:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->ModeListMap:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 635
    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->ModeListMap:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ne v2, p0, :cond_0

    .line 636
    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->ModeListMap:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 634
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    :cond_1
    return v1
.end method

.method public static getTabTitleByMode(I)I
    .locals 4
    .parameter "modeId"

    .prologue
    .line 654
    const/4 v1, 0x0

    .line 655
    .local v1, titleId:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->ModeListMap:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 656
    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->ModeListMap:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v2, p0, :cond_1

    .line 657
    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->ModeListMap:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget v1, v2, v3

    .line 661
    :cond_0
    return v1

    .line 655
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initDialogModeListSCHN()V
    .locals 10

    .prologue
    const v9, -0xf00001

    const v8, -0xf000001

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 223
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 224
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    const/4 v0, 0x0

    .line 225
    .local v0, MODE_CONFIG_BASE_INDEX:I
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    if-nez v3, :cond_0

    .line 226
    const/16 v3, 0x16

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    .line 228
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/high16 v4, 0x1202

    aput v4, v3, v6

    .line 229
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 230
    add-int/lit8 v0, v0, 0x1

    .line 233
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/high16 v4, 0x1102

    aput v4, v3, v6

    .line 234
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 235
    add-int/lit8 v0, v0, 0x1

    .line 237
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/high16 v4, 0x3202

    aput v4, v3, v6

    .line 238
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 239
    add-int/lit8 v0, v0, 0x1

    .line 241
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/high16 v4, 0x1113

    aput v4, v3, v6

    .line 242
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v9, v3, v5

    .line 243
    add-int/lit8 v0, v0, 0x1

    .line 246
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isVoiceInstalled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/high16 v4, -0x3efe

    aput v4, v3, v6

    .line 248
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 249
    add-int/lit8 v0, v0, 0x1

    .line 252
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x61008000

    aput v4, v3, v6

    .line 253
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 254
    add-int/lit8 v0, v0, 0x1

    .line 256
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    if-eqz v3, :cond_3

    .line 257
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    .line 259
    .local v2, keyboardType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;
    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_2

    .line 260
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x33020100

    aput v4, v3, v6

    .line 261
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v8, v3, v5

    .line 262
    add-int/lit8 v0, v0, 0x1

    .line 264
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x33010100

    aput v4, v3, v6

    .line 265
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v8, v3, v5

    .line 266
    add-int/lit8 v0, v0, 0x1

    .line 268
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x33030100

    aput v4, v3, v6

    .line 269
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v8, v3, v5

    .line 270
    add-int/lit8 v0, v0, 0x1

    .line 320
    .end local v2           #keyboardType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/high16 v4, 0x1111

    aput v4, v3, v6

    .line 321
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v9, v3, v5

    .line 322
    add-int/lit8 v0, v0, 0x1

    .line 324
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x61011000

    aput v4, v3, v6

    .line 325
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, -0xff001

    aput v4, v3, v5

    .line 326
    add-int/lit8 v0, v0, 0x1

    .line 328
    iput v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mEditListSize:I

    .line 330
    const/16 v3, 0x16

    sput v3, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mTotalEditListSize:I

    .line 331
    sget v3, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mTotalEditListSize:I

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mClickedValue:[Z

    .line 332
    sput-boolean v5, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mIsDialogListInit:Z

    .line 334
    return-void

    .line 275
    .restart local v2       #keyboardType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x34020100

    aput v4, v3, v6

    .line 276
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v8, v3, v5

    .line 277
    add-int/lit8 v0, v0, 0x1

    .line 279
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x34010100

    aput v4, v3, v6

    .line 280
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v8, v3, v5

    .line 281
    add-int/lit8 v0, v0, 0x1

    .line 283
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x34030100

    aput v4, v3, v6

    .line 284
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v8, v3, v5

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    .end local v2           #keyboardType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isLargeScreen()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 290
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x33020100

    aput v4, v3, v6

    .line 291
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 292
    add-int/lit8 v0, v0, 0x1

    .line 294
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x33010100

    aput v4, v3, v6

    .line 295
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 296
    add-int/lit8 v0, v0, 0x1

    .line 298
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x33030100

    aput v4, v3, v6

    .line 299
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 305
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x34020100

    aput v4, v3, v6

    .line 306
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 307
    add-int/lit8 v0, v0, 0x1

    .line 309
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x34010100

    aput v4, v3, v6

    .line 310
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 311
    add-int/lit8 v0, v0, 0x1

    .line 313
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x34030100

    aput v4, v3, v6

    .line 314
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private initDialogModeListTCHN()V
    .locals 10

    .prologue
    const v9, -0xf00001

    const v8, -0xf000001

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 337
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 338
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    .line 340
    .local v2, keyboardType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;
    const/4 v0, 0x0

    .line 341
    .local v0, MODE_CONFIG_BASE_INDEX:I
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    if-nez v3, :cond_0

    .line 342
    const/16 v3, 0x16

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    .line 345
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeListSep:Ljava/util/Vector;

    if-nez v3, :cond_1

    .line 346
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeListSep:Ljava/util/Vector;

    .line 349
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeListSep:Ljava/util/Vector;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v6

    .line 351
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 352
    add-int/lit8 v0, v0, 0x1

    .line 356
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/high16 v4, -0x6efb

    aput v4, v3, v6

    .line 357
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0xfffffff

    aput v4, v3, v5

    .line 358
    add-int/lit8 v0, v0, 0x1

    .line 360
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/high16 v4, 0x2104

    aput v4, v3, v6

    .line 361
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 362
    add-int/lit8 v0, v0, 0x1

    .line 364
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/high16 v4, 0x2204

    aput v4, v3, v6

    .line 365
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 366
    add-int/lit8 v0, v0, 0x1

    .line 368
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/high16 v4, 0x3205

    aput v4, v3, v6

    .line 369
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 370
    add-int/lit8 v0, v0, 0x1

    .line 372
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/high16 v4, 0x3204

    aput v4, v3, v6

    .line 373
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 374
    add-int/lit8 v0, v0, 0x1

    .line 376
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    if-eqz v3, :cond_3

    .line 377
    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_2

    .line 378
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x33050100

    aput v4, v3, v6

    .line 379
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v8, v3, v5

    .line 380
    add-int/lit8 v0, v0, 0x1

    .line 382
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x33040100

    aput v4, v3, v6

    .line 383
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v8, v3, v5

    .line 384
    add-int/lit8 v0, v0, 0x1

    .line 419
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeListSep:Ljava/util/Vector;

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/4 v4, -0x2

    aput v4, v3, v6

    .line 421
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 422
    add-int/lit8 v0, v0, 0x1

    .line 425
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/high16 v4, 0x1102

    aput v4, v3, v6

    .line 426
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 427
    add-int/lit8 v0, v0, 0x1

    .line 429
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/high16 v4, 0x1202

    aput v4, v3, v6

    .line 430
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 431
    add-int/lit8 v0, v0, 0x1

    .line 433
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/high16 v4, 0x3202

    aput v4, v3, v6

    .line 434
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 435
    add-int/lit8 v0, v0, 0x1

    .line 437
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    if-eqz v3, :cond_6

    .line 438
    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_5

    .line 439
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x33020100

    aput v4, v3, v6

    .line 440
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v8, v3, v5

    .line 441
    add-int/lit8 v0, v0, 0x1

    .line 464
    :goto_1
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeListSep:Ljava/util/Vector;

    const/4 v4, -0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/4 v4, -0x3

    aput v4, v3, v6

    .line 466
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 467
    add-int/lit8 v0, v0, 0x1

    .line 470
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/high16 v4, 0x1111

    aput v4, v3, v6

    .line 471
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v9, v3, v5

    .line 472
    add-int/lit8 v0, v0, 0x1

    .line 474
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    if-eqz v3, :cond_9

    .line 475
    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_8

    .line 476
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x33010100

    aput v4, v3, v6

    .line 477
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v8, v3, v5

    .line 478
    add-int/lit8 v0, v0, 0x1

    .line 498
    :goto_2
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/high16 v4, 0x1113

    aput v4, v3, v6

    .line 499
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v9, v3, v5

    .line 500
    add-int/lit8 v0, v0, 0x1

    .line 502
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    if-eqz v3, :cond_c

    .line 503
    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_b

    .line 504
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x33030100

    aput v4, v3, v6

    .line 505
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v8, v3, v5

    .line 506
    add-int/lit8 v0, v0, 0x1

    .line 529
    :goto_3
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeListSep:Ljava/util/Vector;

    const/4 v4, -0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/4 v4, -0x4

    aput v4, v3, v6

    .line 531
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 532
    add-int/lit8 v0, v0, 0x1

    .line 535
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x61011000

    aput v4, v3, v6

    .line 536
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, -0xff001

    aput v4, v3, v5

    .line 537
    add-int/lit8 v0, v0, 0x1

    .line 539
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x61008000

    aput v4, v3, v6

    .line 540
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 541
    add-int/lit8 v0, v0, 0x1

    .line 543
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const/high16 v4, -0x3efe

    aput v4, v3, v6

    .line 544
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 545
    add-int/lit8 v0, v0, 0x1

    .line 549
    iput v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mEditListSize:I

    .line 551
    const/16 v3, 0x16

    sput v3, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mTotalEditListSize:I

    .line 552
    sget v3, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mTotalEditListSize:I

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mClickedValue:[Z

    .line 553
    sput-boolean v5, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mIsDialogListInit:Z

    .line 557
    return-void

    .line 387
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x34050100

    aput v4, v3, v6

    .line 388
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v8, v3, v5

    .line 389
    add-int/lit8 v0, v0, 0x1

    .line 391
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x34040100

    aput v4, v3, v6

    .line 392
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v8, v3, v5

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 397
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isLargeScreen()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 398
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x33050100

    aput v4, v3, v6

    .line 399
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 400
    add-int/lit8 v0, v0, 0x1

    .line 402
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x33040100

    aput v4, v3, v6

    .line 403
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 407
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x34050100

    aput v4, v3, v6

    .line 408
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 409
    add-int/lit8 v0, v0, 0x1

    .line 411
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x34040100

    aput v4, v3, v6

    .line 412
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 444
    :cond_5
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x34020100

    aput v4, v3, v6

    .line 445
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v8, v3, v5

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 450
    :cond_6
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isLargeScreen()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 451
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x33020100

    aput v4, v3, v6

    .line 452
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 456
    :cond_7
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x34020100

    aput v4, v3, v6

    .line 457
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 481
    :cond_8
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x34010100

    aput v4, v3, v6

    .line 482
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v8, v3, v5

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 486
    :cond_9
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isLargeScreen()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 487
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x33010100

    aput v4, v3, v6

    .line 488
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 492
    :cond_a
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x34010100

    aput v4, v3, v6

    .line 493
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 494
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 509
    :cond_b
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x34030100

    aput v4, v3, v6

    .line 510
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v8, v3, v5

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 515
    :cond_c
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isLargeScreen()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 516
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x33030100

    aput v4, v3, v6

    .line 517
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 521
    :cond_d
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    const v4, 0x34030100

    aput v4, v3, v6

    .line 522
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v3, v3, v0

    aput v7, v3, v5

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method public static isDialogListInit()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mIsDialogListInit:Z

    return v0
.end method

.method public static isInvalidMode(I)Z
    .locals 4
    .parameter "modeId"

    .prologue
    .line 587
    const/4 v1, 0x0

    .line 588
    .local v1, result:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->ModeListMap:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 589
    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->ModeListMap:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v2, p0, :cond_1

    .line 590
    const/4 v1, 0x1

    .line 594
    :cond_0
    return v1

    .line 588
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getClickValuesByIndex(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, result:Z
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mClickedValue:[Z

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mClickedValue:[Z

    aget-boolean v0, v1, p1

    .line 812
    :goto_0
    return v0

    .line 810
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDialogListMode(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getDialogListModeMaskVaule(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getDialogListSep()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeListSep:Ljava/util/Vector;

    return-object v0
.end method

.method public getDialogModeList()[[I
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    return-object v0
.end method

.method public getEditListInitSize()I
    .locals 1

    .prologue
    .line 802
    iget v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mEditListSize:I

    return v0
.end method

.method public initCheckedtData()V
    .locals 4

    .prologue
    .line 784
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getTabInputModeCheckedVaule()[Z

    move-result-object v1

    .line 785
    .local v1, settings:[Z
    iget-object v2, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mClickedValue:[Z

    array-length v2, v2

    array-length v3, v1

    if-eq v2, v3, :cond_1

    .line 786
    const-string v2, "SimeTabDataService"

    const-string v3, "Check value length is different"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_0
    return-void

    .line 789
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mClickedValue:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 790
    iget-object v2, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mClickedValue:[Z

    aget-boolean v3, v1, v0

    aput-boolean v3, v2, v0

    .line 789
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public initDialogModeList()V
    .locals 1

    .prologue
    .line 561
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->initDialogModeListTCHN()V

    .line 566
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->initDialogModeListSCHN()V

    goto :goto_0
.end method

.method public initParams(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 0
    .parameter "switcher"

    .prologue
    .line 740
    iput-object p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mInputSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 741
    return-void
.end method

.method public isModeChecked(I)Z
    .locals 6
    .parameter "mode"

    .prologue
    .line 716
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getTabInputModeCheckedVaule()[Z

    move-result-object v0

    .line 717
    .local v0, checkList:[Z
    const/4 v2, 0x0

    .line 719
    .local v2, isChecked:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 720
    aget-boolean v4, v0, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 721
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getDialogListMode(I)I

    move-result v4

    if-ne p1, v4, :cond_1

    .line 722
    const/4 v2, 0x1

    .line 736
    :cond_0
    :goto_1
    return v2

    .line 725
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getDialogListModeMaskVaule(I)I

    move-result v3

    .line 726
    .local v3, mask:I
    and-int v4, p1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getDialogListMode(I)I

    move-result v5

    and-int/2addr v5, v3

    if-ne v4, v5, :cond_2

    .line 729
    const/4 v2, 0x1

    .line 730
    goto :goto_1

    .line 719
    .end local v3           #mask:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onKeyboardTypeChange()V
    .locals 3

    .prologue
    .line 958
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    .line 962
    .local v0, keyboardType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;
    sget-object v1, Lcom/samsung/inputmethod/tabmode/SimeTabDataService$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$SimeSkbManager$KeyboardType:[I

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 971
    :goto_0
    return-void

    .line 964
    :pswitch_0
    const/high16 v1, 0x300

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->convertHandWritingTypeTo(I)V

    goto :goto_0

    .line 967
    :pswitch_1
    const/high16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->convertHandWritingTypeTo(I)V

    goto :goto_0

    .line 962
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public saveCheckedData(Z[Z)V
    .locals 7
    .parameter "delFromBar"
    .parameter "newCheckValues"

    .prologue
    .line 747
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 748
    invoke-static {p2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setTabInputModeCheckedVaule([Z)Z

    .line 753
    :goto_0
    const/4 v1, 0x0

    .line 754
    .local v1, isChecked:Z
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getTabBarOrder()Ljava/lang/String;

    move-result-object v4

    .line 755
    .local v4, order:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->decodeTabBarOrder(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v5

    .line 757
    .local v5, tabModeList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getDialogModeList()[[I

    move-result-object v6

    array-length v6, v6

    if-ge v0, v6, :cond_4

    .line 758
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getDialogListMode(I)I

    move-result v2

    .line 760
    .local v2, modeId:I
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 761
    aget-boolean v1, p2, v0

    .line 766
    :goto_2
    if-eqz v1, :cond_3

    .line 767
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 769
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 757
    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 750
    .end local v0           #i:I
    .end local v1           #isChecked:Z
    .end local v2           #modeId:I
    .end local v4           #order:Ljava/lang/String;
    .end local v5           #tabModeList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mClickedValue:[Z

    invoke-static {v6}, Lcom/samsung/inputmethod/setting/SimeSetting;->setTabInputModeCheckedVaule([Z)Z

    goto :goto_0

    .line 763
    .restart local v0       #i:I
    .restart local v1       #isChecked:Z
    .restart local v2       #modeId:I
    .restart local v4       #order:Ljava/lang/String;
    .restart local v5       #tabModeList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_2
    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mClickedValue:[Z

    aget-boolean v1, v6, v0

    goto :goto_2

    .line 772
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_3

    .line 776
    .end local v2           #modeId:I
    :cond_4
    invoke-static {v5}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->encodeTabBarOrder(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v3

    .line 777
    .local v3, newOrder:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->setTabBarOrder(Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method public setClickValueByIndex(IZ)V
    .locals 1
    .parameter "index"
    .parameter "isChecked"

    .prologue
    .line 796
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mClickedValue:[Z

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mClickedValue:[Z

    aput-boolean p2, v0, p1

    goto :goto_0
.end method

.method public setInputMode(I)V
    .locals 10
    .parameter "newInputMode"

    .prologue
    .line 832
    const/4 v1, -0x1

    .line 833
    .local v1, index:I
    const/4 v5, 0x0

    .line 834
    .local v5, oldInputMode:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v8, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    array-length v8, v8

    if-ge v0, v8, :cond_3

    .line 835
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getDialogListMode(I)I

    move-result v8

    if-ne p1, v8, :cond_1

    .line 868
    :cond_0
    :goto_1
    return-void

    .line 839
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getDialogListModeMaskVaule(I)I

    move-result v3

    .line 840
    .local v3, mask:I
    and-int v8, p1, v3

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getDialogListMode(I)I

    move-result v9

    and-int/2addr v9, v3

    if-ne v8, v9, :cond_2

    .line 841
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getDialogListMode(I)I

    move-result v5

    .line 842
    iget-object v8, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mDialogModeList:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aput p1, v8, v9

    .line 843
    move v1, v0

    .line 834
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 847
    .end local v3           #mask:I
    :cond_3
    if-ltz v1, :cond_0

    .line 851
    const/4 v2, 0x0

    .line 852
    .local v2, isChecked:Z
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getTabBarOrder()Ljava/lang/String;

    move-result-object v6

    .line 853
    .local v6, order:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->decodeTabBarOrder(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v7

    .line 854
    .local v7, tabModeList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->initCheckedtData()V

    .line 855
    iget-object v8, p0, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->mClickedValue:[Z

    aget-boolean v2, v8, v1

    .line 857
    if-eqz v2, :cond_0

    .line 858
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 859
    if-ltz v0, :cond_4

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 860
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 862
    :cond_4
    invoke-static {v7}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->encodeTabBarOrder(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    .line 865
    .local v4, newOrder:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->setTabBarOrder(Ljava/lang/String;)V

    goto :goto_1
.end method
