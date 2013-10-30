.class public Lcom/samsung/inputmethod/SimeToolBarModeMgr;
.super Ljava/lang/Object;
.source "SimeToolBarModeMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/SimeToolBarModeMgr$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final MASK_TOOLBAR_123:I = 0x10

.field public static final MASK_TOOLBAR_CHN:I = 0xf0000

.field public static final MASK_TOOLBAR_CHN_CLR:I = 0xffff

.field public static final MASK_TOOLBAR_CHN_ONLY:I = 0xf0fff

.field public static final MASK_TOOLBAR_ENG:I = 0xf00

.field public static final MASK_TOOLBAR_ENG_CLR:I = 0xff0ff

.field public static final MASK_TOOLBAR_ENG_ONLY:I = 0xfff

.field public static final MASK_TOOLBAR_FULL_MODE:I = 0xfffff

.field public static final MASK_TOOLBAR_KOR:I = 0x1000

.field public static final MASK_TOOLBAR_KOREAN:I = 0xf000

.field public static final MASK_TOOLBAR_KOREAN_CLR:I = 0xf0fff

.field public static final MASK_TOOLBAR_KOR_ONLY:I = 0xffff

.field public static final MASK_TOOLBAR_Lower:I = 0x100

.field public static final MASK_TOOLBAR_NUM:I = 0xf0

.field public static final MASK_TOOLBAR_NUM_CLR:I = 0xfff0f

.field public static final MASK_TOOLBAR_PY:I = 0x10000

.field public static final MASK_TOOLBAR_STR:I = 0x20000

.field public static final MASK_TOOLBAR_SYM:I = 0x1

.field public static final MASK_TOOLBAR_SYMBOL:I = 0xf

.field public static final MASK_TOOLBAR_SYMBOL_CLR:I = 0xffff0

.field public static final MASK_TOOLBAR_Temp_Upper:I = 0x200

.field public static final MASK_TOOLBAR_Upper:I = 0x300

.field public static final MAX_TOOLBAR_MODE_CNT:I = 0x5

.field private static final MAX_TOOLBAR_MODE_DISPLAYED_CNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SimeToolBarModeInfo"


# instance fields
.field private isStateActive:Z

.field private mDisplayToolBarCodeInfo:I

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mRecentLangToolBarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

.field private mToolBarCodeInfo:I

.field private mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 2
    .parameter "mModeSwitcher"

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const v0, 0x11111

    iput v0, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    .line 86
    iput v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mDisplayToolBarCodeInfo:I

    .line 90
    iput-boolean v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isStateActive:Z

    .line 93
    new-instance v0, Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-direct {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    .line 95
    new-instance v0, Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-direct {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mRecentLangToolBarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    .line 98
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 99
    return-void
.end method

.method private chnToolBarModeToggle()I
    .locals 3

    .prologue
    .line 785
    const/4 v0, 0x0

    .line 786
    .local v0, newInputMode:I
    const v1, 0x12020001

    iget-object v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v2, v2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    if-ne v1, v2, :cond_1

    .line 787
    const v0, 0x32020001

    .line 790
    :cond_0
    :goto_0
    return v0

    .line 788
    :cond_1
    const v1, 0x32020001

    iget-object v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v2, v2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    if-ne v1, v2, :cond_0

    .line 789
    const v0, 0x12020001

    goto :goto_0
.end method

.method private chooseToolBarCHNMode()I
    .locals 2

    .prologue
    .line 761
    const/4 v0, 0x0

    .line 763
    .local v0, newInputMode:I
    const/high16 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    const v0, 0x12020001

    .line 767
    :goto_0
    return v0

    .line 766
    :cond_0
    const v0, 0x32020001

    goto :goto_0
.end method

.method private chooseToolBarENGMode()I
    .locals 2

    .prologue
    .line 771
    const/4 v0, 0x0

    .line 772
    .local v0, newInputMode:I
    const/16 v1, 0x100

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 773
    const v0, 0x12110001

    .line 780
    :cond_0
    :goto_0
    return v0

    .line 774
    :cond_1
    const/16 v1, 0x200

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 775
    const v0, 0x12310001

    goto :goto_0

    .line 776
    :cond_2
    const/16 v1, 0x300

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 777
    const v0, 0x12210001

    goto :goto_0
.end method

.method private engToolBarModeToggle()I
    .locals 2

    .prologue
    .line 795
    const/4 v0, 0x0

    .line 796
    .local v0, newInputMode:I
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->caseMask()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 810
    :goto_0
    return v0

    .line 798
    :sswitch_0
    const v0, 0x12310001

    .line 799
    goto :goto_0

    .line 801
    :sswitch_1
    const v0, 0x12210001

    .line 802
    goto :goto_0

    .line 804
    :sswitch_2
    const v0, 0x12110001

    .line 805
    goto :goto_0

    .line 796
    nop

    :sswitch_data_0
    .sparse-switch
        0x100000 -> :sswitch_0
        0x200000 -> :sswitch_2
        0x300000 -> :sswitch_1
    .end sparse-switch
.end method

.method private findCurModeMask(I)I
    .locals 1
    .parameter "toolbarMask"

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, toolbarMode:I
    sparse-switch p1, :sswitch_data_0

    .line 130
    :goto_0
    return v0

    .line 111
    :sswitch_0
    const/high16 v0, 0xf

    .line 112
    goto :goto_0

    .line 114
    :sswitch_1
    const v0, 0xf000

    .line 115
    goto :goto_0

    .line 119
    :sswitch_2
    const/16 v0, 0xf00

    .line 120
    goto :goto_0

    .line 122
    :sswitch_3
    const/16 v0, 0xf0

    .line 123
    goto :goto_0

    .line 125
    :sswitch_4
    const/16 v0, 0xf

    .line 126
    goto :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x10 -> :sswitch_3
        0x100 -> :sswitch_2
        0x200 -> :sswitch_2
        0x300 -> :sswitch_2
        0x1000 -> :sswitch_1
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
    .end sparse-switch
.end method

.method private findCurToolbarMode(I)I
    .locals 1
    .parameter "inputMode"

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, curToolbarMode:I
    sparse-switch p1, :sswitch_data_0

    .line 217
    :goto_0
    return v0

    .line 172
    :sswitch_0
    const/high16 v0, 0xf

    .line 175
    goto :goto_0

    .line 178
    :sswitch_1
    const v0, 0xf000

    .line 181
    goto :goto_0

    .line 185
    :sswitch_2
    const/16 v0, 0xf00

    .line 188
    goto :goto_0

    .line 193
    :sswitch_3
    const/16 v0, 0xf0

    .line 196
    goto :goto_0

    .line 210
    :sswitch_4
    const/16 v0, 0xf

    .line 213
    goto :goto_0

    .line 169
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7dffefff -> :sswitch_3
        -0x7dffdfff -> :sswitch_3
        0x12020001 -> :sswitch_0
        0x12030001 -> :sswitch_1
        0x12110001 -> :sswitch_2
        0x12210001 -> :sswitch_2
        0x12310001 -> :sswitch_2
        0x12430001 -> :sswitch_1
        0x32020001 -> :sswitch_0
        0x52000001 -> :sswitch_3
        0x52200001 -> :sswitch_4
        0x62011001 -> :sswitch_4
        0x62012001 -> :sswitch_4
        0x62013001 -> :sswitch_4
        0x62014001 -> :sswitch_4
        0x62015001 -> :sswitch_4
        0x62016001 -> :sswitch_4
        0x62021001 -> :sswitch_4
        0x62022001 -> :sswitch_4
        0x62023001 -> :sswitch_4
        0x62024001 -> :sswitch_4
        0x62025001 -> :sswitch_4
        0x62026001 -> :sswitch_4
        0x72000001 -> :sswitch_3
    .end sparse-switch
.end method

.method private findNextValidToolbarMode(I)I
    .locals 5
    .parameter "currentValidMode"

    .prologue
    const/16 v4, 0xf0

    const/16 v3, 0xf

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, ret:I
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->getCurToolBarModeNum()I

    move-result v1

    .line 235
    .local v1, toolBarModeNum:I
    const/high16 v2, 0xf

    if-eq v2, p1, :cond_0

    const/16 v2, 0xf00

    if-eq v2, p1, :cond_0

    const v2, 0xf000

    if-eq v2, p1, :cond_0

    if-eq v3, p1, :cond_0

    if-ne v4, p1, :cond_3

    .line 240
    :cond_0
    shr-int/lit8 v0, p1, 0x4

    .line 244
    :cond_1
    if-lez v0, :cond_6

    .line 245
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 247
    const/4 v2, 0x4

    if-gt v1, v2, :cond_4

    .line 281
    :cond_2
    :goto_0
    if-ne v0, p1, :cond_3

    .line 283
    const/4 v0, 0x0

    .line 289
    :cond_3
    return v0

    .line 254
    :cond_4
    if-ne v4, p1, :cond_2

    .line 255
    if-ne v0, v3, :cond_2

    .line 258
    const/high16 v0, 0xf

    .line 279
    :goto_1
    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 269
    :cond_5
    shr-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 275
    :cond_6
    const/high16 v0, 0xf

    goto :goto_1
.end method

.method private getCurToolBarModeNum()I
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, toolBarModeNum:I
    const/high16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    add-int/lit8 v0, v0, 0x1

    .line 142
    :cond_0
    const/16 v1, 0xf00

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    add-int/lit8 v0, v0, 0x1

    .line 145
    :cond_1
    const v1, 0xf000

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    add-int/lit8 v0, v0, 0x1

    .line 148
    :cond_2
    const/16 v1, 0xf0

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    add-int/lit8 v0, v0, 0x1

    .line 151
    :cond_3
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    add-int/lit8 v0, v0, 0x1

    .line 156
    :cond_4
    return v0
.end method

.method public static getToolbarSkbLayout(I)I
    .locals 1
    .parameter "inputMode"

    .prologue
    .line 675
    const/4 v0, 0x0

    .line 678
    .local v0, layoutId:I
    invoke-static {p0}, Lcom/samsung/inputmethod/SimeInputModeDef;->printInputMode(I)V

    .line 681
    sparse-switch p0, :sswitch_data_0

    .line 729
    const v0, 0x7f0400a2

    .line 734
    :goto_0
    return v0

    .line 685
    :sswitch_0
    const v0, 0x7f0400a0

    .line 686
    goto :goto_0

    .line 688
    :sswitch_1
    const v0, 0x7f040095

    .line 689
    goto :goto_0

    .line 691
    :sswitch_2
    const v0, 0x7f040097

    .line 692
    goto :goto_0

    .line 694
    :sswitch_3
    const v0, 0x7f040099

    .line 695
    goto :goto_0

    .line 697
    :sswitch_4
    const v0, 0x7f04009b

    .line 698
    goto :goto_0

    .line 700
    :sswitch_5
    const v0, 0x7f04009d

    .line 701
    goto :goto_0

    .line 703
    :sswitch_6
    const v0, 0x7f04009f

    .line 704
    goto :goto_0

    .line 706
    :sswitch_7
    const v0, 0x7f040095

    .line 707
    goto :goto_0

    .line 709
    :sswitch_8
    const v0, 0x7f040097

    .line 710
    goto :goto_0

    .line 712
    :sswitch_9
    const v0, 0x7f040099

    .line 713
    goto :goto_0

    .line 715
    :sswitch_a
    const v0, 0x7f04009b

    .line 716
    goto :goto_0

    .line 718
    :sswitch_b
    const v0, 0x7f04009d

    .line 719
    goto :goto_0

    .line 721
    :sswitch_c
    const v0, 0x7f04009f

    .line 722
    goto :goto_0

    .line 724
    :sswitch_d
    const v0, 0x7f040026

    .line 725
    goto :goto_0

    .line 681
    nop

    :sswitch_data_0
    .sparse-switch
        0x12430001 -> :sswitch_d
        0x52200001 -> :sswitch_0
        0x62011001 -> :sswitch_1
        0x62012001 -> :sswitch_2
        0x62013001 -> :sswitch_3
        0x62014001 -> :sswitch_4
        0x62015001 -> :sswitch_5
        0x62016001 -> :sswitch_6
        0x62021001 -> :sswitch_7
        0x62022001 -> :sswitch_8
        0x62023001 -> :sswitch_9
        0x62024001 -> :sswitch_a
        0x62025001 -> :sswitch_b
        0x62026001 -> :sswitch_c
    .end sparse-switch
.end method

.method private korToolBarModeToggle()I
    .locals 2

    .prologue
    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, newInputMode:I
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->caseMask()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 820
    const v0, 0x12430001

    .line 823
    :goto_0
    return v0

    .line 817
    :pswitch_0
    const v0, 0x12030001

    .line 818
    goto :goto_0

    .line 815
    :pswitch_data_0
    .packed-switch 0x400000
        :pswitch_0
    .end packed-switch
.end method

.method private numSymToolBarModeToggle()I
    .locals 3

    .prologue
    .line 827
    const/4 v0, 0x0

    .line 828
    .local v0, newInputMode:I
    const v1, 0x72000001

    iget-object v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v2, v2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    if-ne v1, v2, :cond_0

    .line 829
    const v0, 0x62011001

    .line 833
    :goto_0
    return v0

    .line 831
    :cond_0
    const v0, 0x72000001

    goto :goto_0
.end method

.method private processUserKey(ILcom/samsung/inputmethod/SimeInputModeDef;)Z
    .locals 5
    .parameter "userKey"
    .parameter "newInputMode"

    .prologue
    const v2, 0x52000001

    const v4, 0x62011001

    const v3, 0x72000001

    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, bRet:Z
    if-nez p2, :cond_0

    .line 848
    new-instance p2, Lcom/samsung/inputmethod/SimeInputModeDef;

    .end local p2
    invoke-direct {p2}, Lcom/samsung/inputmethod/SimeInputModeDef;-><init>()V

    .line 849
    .restart local p2
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1008
    :goto_0
    return v0

    .line 851
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isMonth()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isDateTime()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isPhone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 863
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeInputModeDef;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 864
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v2, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    iput v2, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 865
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->encodeToolBarInfo(I)V

    .line 866
    const/4 v0, 0x1

    .line 867
    goto :goto_0

    .line 857
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->languageMask()I

    move-result v1

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 858
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->chnToolBarModeToggle()I

    move-result v1

    iput v1, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_1

    .line 860
    :cond_4
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->chooseToolBarCHNMode()I

    move-result v1

    iput v1, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_1

    .line 869
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isMonth()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isDateTime()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isPhone()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 882
    :cond_5
    :goto_2
    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeInputModeDef;->isValid()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 883
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v2, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    iput v2, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 884
    :cond_6
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->printInputMode(I)V

    .line 885
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->encodeToolBarInfo(I)V

    .line 886
    const/4 v0, 0x1

    .line 887
    goto :goto_0

    .line 875
    :cond_7
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->languageMask()I

    move-result v1

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->typeMask()I

    move-result v1

    const/high16 v2, 0x1000

    if-ne v1, v2, :cond_8

    .line 877
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->engToolBarModeToggle()I

    move-result v1

    iput v1, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_2

    .line 879
    :cond_8
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->chooseToolBarENGMode()I

    move-result v1

    iput v1, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_2

    .line 889
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isMonth()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isDateTime()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isPhone()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 901
    :cond_9
    :goto_3
    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeInputModeDef;->isValid()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 902
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v2, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    iput v2, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 903
    :cond_a
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->encodeToolBarInfo(I)V

    .line 904
    const/4 v0, 0x1

    .line 905
    goto/16 :goto_0

    .line 895
    :cond_b
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->languageMask()I

    move-result v1

    const/high16 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 896
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->korToolBarModeToggle()I

    move-result v1

    iput v1, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_3

    .line 898
    :cond_c
    const v1, 0x12030001

    iput v1, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_3

    .line 909
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isNumOnly()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 912
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    iput v1, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 953
    :cond_d
    :goto_4
    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeInputModeDef;->isValid()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 954
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v2, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    iput v2, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 955
    :cond_e
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->encodeToolBarInfo(I)V

    .line 956
    const/4 v0, 0x1

    .line 958
    goto/16 :goto_0

    .line 913
    :cond_f
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isPhone()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 917
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    if-eq v1, v2, :cond_d

    .line 918
    iput v2, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_4

    .line 919
    :cond_10
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isNumSymModeOnly()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 923
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    if-eq v1, v3, :cond_d

    .line 924
    iput v3, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_4

    .line 925
    :cond_11
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEngNumSymModeOnly()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 929
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    if-eq v1, v3, :cond_d

    .line 930
    iput v3, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_4

    .line 936
    :cond_12
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 937
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    if-ne v3, v1, :cond_13

    .line 938
    iput v4, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_4

    .line 939
    :cond_13
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->typeMask()I

    move-result v1

    const/high16 v2, 0x6000

    if-ne v1, v2, :cond_14

    .line 940
    iput v3, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_4

    .line 942
    :cond_14
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 943
    iput v3, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_4

    .line 945
    :cond_15
    iput v4, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_4

    .line 947
    :cond_16
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 948
    :cond_17
    iput v3, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto/16 :goto_4

    .line 950
    :cond_18
    iput v3, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto/16 :goto_4

    .line 962
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isMonth()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isDateTime()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 979
    :cond_19
    :goto_5
    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeInputModeDef;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 980
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v2, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    iput v2, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 981
    :cond_1a
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->encodeToolBarInfo(I)V

    .line 982
    const/4 v0, 0x1

    .line 984
    goto/16 :goto_0

    .line 966
    :cond_1b
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isPhone()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 970
    const v1, 0x52200001

    iput v1, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_5

    .line 973
    :cond_1c
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 974
    iput v4, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_5

    .line 977
    :cond_1d
    iput v4, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_5

    .line 987
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->switchToSymbolInputToolbarMode()I

    move-result v1

    iput v1, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 988
    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeInputModeDef;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 989
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v2, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    iput v2, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 991
    :cond_1e
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->encodeToolBarInfo(I)V

    .line 992
    const/4 v0, 0x1

    .line 994
    goto/16 :goto_0

    .line 997
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->toggleToolBarMode()I

    move-result v1

    iput v1, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 998
    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeInputModeDef;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 999
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v2, p2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    iput v2, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 1001
    :cond_1f
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->encodeToolBarInfo(I)V

    .line 1002
    const/4 v0, 0x1

    .line 1004
    goto/16 :goto_0

    .line 849
    nop

    :pswitch_data_0
    .packed-switch -0x61
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private transToToolbarMode(Lcom/samsung/inputmethod/SimeInputModeDef;)Z
    .locals 7
    .parameter "inputMode"

    .prologue
    const v6, 0x12030001

    const/high16 v5, 0x4

    const/high16 v4, 0x2

    const/high16 v3, 0x1

    const v2, 0x12020001

    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, bRet:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    const/4 v0, 0x1

    .line 522
    :goto_0
    return v0

    .line 453
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->typeMask()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 515
    iput v2, p1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 520
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 455
    :sswitch_0
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->languageMask()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 456
    const/high16 v1, 0x20

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->caseMask()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 457
    const v1, 0x12210001

    iput v1, p1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_1

    .line 458
    :cond_2
    const/high16 v1, 0x30

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->caseMask()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 459
    const v1, 0x12310001

    iput v1, p1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_1

    .line 461
    :cond_3
    const v1, 0x12110001

    iput v1, p1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_1

    .line 463
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->languageMask()I

    move-result v1

    if-eq v1, v4, :cond_5

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->languageMask()I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 465
    :cond_5
    iput v2, p1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_1

    .line 467
    :cond_6
    iput v6, p1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_1

    .line 471
    :sswitch_1
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->recogType()I

    move-result v1

    if-lez v1, :cond_a

    .line 472
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->languageMask()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 473
    const v1, 0x12110001

    iput v1, p1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_1

    .line 474
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->languageMask()I

    move-result v1

    if-eq v1, v4, :cond_8

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->languageMask()I

    move-result v1

    if-ne v1, v5, :cond_9

    .line 476
    :cond_8
    iput v2, p1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_1

    .line 478
    :cond_9
    iput v6, p1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_1

    .line 482
    :cond_a
    const v1, 0x32020001

    iput v1, p1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_1

    .line 486
    :sswitch_2
    const v1, 0x52000001

    iput v1, p1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_1

    .line 489
    :sswitch_3
    const v1, 0x62011001

    iput v1, p1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_1

    .line 493
    :sswitch_4
    const v1, 0x72000001

    iput v1, p1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_1

    .line 498
    :sswitch_5
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->symbolNumType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_b

    .line 500
    const v1, -0x7dffefff

    iput v1, p1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto/16 :goto_1

    .line 503
    :cond_b
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->symbolNumType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_1

    .line 505
    const v1, -0x7dffdfff

    iput v1, p1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto/16 :goto_1

    .line 453
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x10000000 -> :sswitch_0
        0x30000000 -> :sswitch_1
        0x50000000 -> :sswitch_2
        0x60000000 -> :sswitch_3
        0x70000000 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public activate(I)I
    .locals 4
    .parameter "inputMode"

    .prologue
    .line 528
    iget-boolean v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isStateActive:Z

    if-nez v2, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->resetToolBarEncodingInfo()V

    .line 533
    new-instance v1, Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-direct {v1, p1}, Lcom/samsung/inputmethod/SimeInputModeDef;-><init>(I)V

    .line 535
    .local v1, curInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->transToToolbarMode(Lcom/samsung/inputmethod/SimeInputModeDef;)Z

    move-result v0

    .line 536
    .local v0, bRet:Z
    if-eqz v0, :cond_0

    .line 537
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v3, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    iput v3, v2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 538
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v2, v2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-static {v2}, Lcom/samsung/inputmethod/SimeInputModeDef;->printInputMode(I)V

    .line 539
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v2, v2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->encodeToolBarInfo(I)V

    .line 540
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isStateActive:Z

    .line 553
    .end local v0           #bRet:Z
    .end local v1           #curInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v2, v2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    return v2
.end method

.method public deactive()V
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isStateActive:Z

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->resetToolBarEncodingInfo()V

    .line 559
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->reset()V

    .line 560
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mRecentLangToolBarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->reset()V

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isStateActive:Z

    .line 569
    :cond_0
    return-void
.end method

.method public encodeToolBarInfo(I)V
    .locals 8
    .parameter "inputMode"

    .prologue
    const v7, 0xfff0f

    const v6, 0xff0ff

    const/high16 v5, 0x2

    const/high16 v3, 0x1

    const v4, 0xffff

    .line 337
    const/high16 v2, 0xf0

    and-int v0, p1, v2

    .line 338
    .local v0, charcase:I
    const/high16 v2, 0xf

    and-int v1, p1, v2

    .line 340
    .local v1, language:I
    const/high16 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 354
    :cond_0
    :goto_0
    const/high16 v2, -0x1000

    and-int/2addr v2, p1

    sparse-switch v2, :sswitch_data_0

    .line 415
    :cond_1
    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mDisplayToolBarCodeInfo:I

    .line 417
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNumOnly()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 418
    iget v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mDisplayToolBarCodeInfo:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mDisplayToolBarCodeInfo:I

    .line 440
    :cond_2
    :goto_2
    return-void

    .line 344
    :cond_3
    if-eq v1, v5, :cond_0

    .line 348
    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 356
    :sswitch_0
    if-ne v1, v5, :cond_4

    .line 359
    iget v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    and-int/2addr v2, v4

    or-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    goto :goto_1

    .line 360
    :cond_4
    const/high16 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 363
    iget v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    const v3, 0xf0fff

    and-int/2addr v2, v3

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    goto :goto_1

    .line 364
    :cond_5
    if-ne v1, v3, :cond_1

    .line 365
    const/high16 v2, 0x20

    if-ne v2, v0, :cond_6

    .line 366
    iget v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    and-int/2addr v2, v6

    or-int/lit16 v2, v2, 0x300

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    goto :goto_1

    .line 367
    :cond_6
    const/high16 v2, 0x30

    if-ne v2, v0, :cond_7

    .line 368
    iget v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    and-int/2addr v2, v6

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    goto :goto_1

    .line 369
    :cond_7
    const/high16 v2, 0x10

    if-ne v2, v0, :cond_1

    .line 370
    iget v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    and-int/2addr v2, v6

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    goto :goto_1

    .line 376
    :sswitch_1
    iget v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    and-int/2addr v2, v4

    or-int/2addr v2, v5

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    goto :goto_1

    .line 379
    :sswitch_2
    iget v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    const v3, 0xffff0

    and-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    goto :goto_1

    .line 384
    :sswitch_3
    iget v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    and-int/2addr v2, v7

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    goto :goto_1

    .line 391
    :sswitch_4
    iget v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    and-int/2addr v2, v7

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    goto :goto_1

    .line 396
    :sswitch_5
    const/high16 v2, 0xf0

    and-int/2addr v2, p1

    const/high16 v3, 0x20

    if-ne v2, v3, :cond_8

    .line 397
    iget v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    const v3, 0xffff0

    and-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    goto/16 :goto_1

    .line 399
    :cond_8
    iget v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    and-int/2addr v2, v7

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    goto/16 :goto_1

    .line 419
    :cond_9
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNumSymModeOnly()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 420
    :cond_a
    const/16 v2, 0x11

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mDisplayToolBarCodeInfo:I

    goto/16 :goto_2

    .line 421
    :cond_b
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEngNumSymModeOnly()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 422
    const/16 v2, 0x11

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mDisplayToolBarCodeInfo:I

    .line 423
    iget v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mDisplayToolBarCodeInfo:I

    iget v3, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    and-int/lit16 v3, v3, 0xf00

    or-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mDisplayToolBarCodeInfo:I

    goto/16 :goto_2

    .line 425
    :cond_c
    iget v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mDisplayToolBarCodeInfo:I

    .line 428
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v2

    if-nez v2, :cond_d

    .line 429
    iget v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mDisplayToolBarCodeInfo:I

    const v3, 0xf0fff

    and-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mDisplayToolBarCodeInfo:I

    .line 432
    :cond_d
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v2

    if-nez v2, :cond_2

    .line 433
    iget v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mDisplayToolBarCodeInfo:I

    and-int/2addr v2, v4

    iput v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mDisplayToolBarCodeInfo:I

    goto/16 :goto_2

    .line 354
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x10000000 -> :sswitch_0
        0x30000000 -> :sswitch_1
        0x50000000 -> :sswitch_5
        0x60000000 -> :sswitch_2
        0x70000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public getConfigInputMode(Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;)I
    .locals 8
    .parameter "modeState"

    .prologue
    .line 581
    iget-object v1, p1, Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 582
    .local v1, editorInfo:Landroid/view/inputmethod/EditorInfo;
    iget-object v3, p1, Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;->inputLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 583
    .local v3, inputLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    const/4 v4, 0x0

    .line 584
    .local v4, newInputMode:I
    const/4 v0, 0x0

    .line 586
    .local v0, bEditorChoose:Z
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v6, :cond_2

    .line 588
    iget v6, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v6, v6, 0xf

    packed-switch v6, :pswitch_data_0

    .line 625
    iget v6, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v5, v6, 0xff0

    .line 626
    .local v5, v:I
    const/16 v6, 0x20

    if-eq v5, v6, :cond_0

    const/16 v6, 0x80

    if-eq v5, v6, :cond_0

    const/16 v6, 0x90

    if-eq v5, v6, :cond_0

    const/16 v6, 0x10

    if-ne v5, v6, :cond_6

    .line 630
    :cond_0
    const v4, 0x12110001

    .line 632
    const/4 v0, 0x1

    .line 663
    .end local v5           #v:I
    :cond_1
    :goto_0
    iput v4, p1, Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;->mode:I

    .line 664
    iput-boolean v0, p1, Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;->isEditorChoose:Z

    .line 667
    :cond_2
    return v4

    .line 592
    :pswitch_0
    iget v6, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v7, 0xfff000

    and-int v2, v6, v7

    .line 594
    .local v2, flag:I
    and-int/lit16 v6, v2, 0x1000

    if-lez v6, :cond_3

    and-int/lit16 v6, v2, 0x2000

    if-lez v6, :cond_3

    .line 596
    const v4, 0x72000001

    .line 606
    :goto_1
    const/4 v0, 0x1

    .line 609
    goto :goto_0

    .line 597
    :cond_3
    and-int/lit16 v6, v2, 0x1000

    if-lez v6, :cond_4

    .line 598
    const v4, 0x72000001

    goto :goto_1

    .line 599
    :cond_4
    and-int/lit16 v6, v2, 0x2000

    if-lez v6, :cond_5

    .line 600
    const v4, 0x72000001

    goto :goto_1

    .line 604
    :cond_5
    const v4, -0x7dffdfff

    goto :goto_1

    .line 612
    .end local v2           #flag:I
    :pswitch_1
    const v4, -0x7dffdfff

    .line 613
    const/4 v0, 0x1

    .line 616
    goto :goto_0

    .line 618
    :pswitch_2
    const v4, 0x52000001

    .line 619
    const/4 v0, 0x1

    .line 622
    goto :goto_0

    .line 634
    .restart local v5       #v:I
    :cond_6
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v6, :cond_1

    .line 635
    sget-object v6, Lcom/samsung/inputmethod/SimeToolBarModeMgr$1;->$SwitchMap$com$samsung$inputmethod$SimeLanguageMgr$ImeLang:[I

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 652
    const v4, 0x12110001

    goto :goto_0

    .line 637
    :pswitch_3
    const v4, 0x12110001

    .line 638
    goto :goto_0

    .line 640
    :pswitch_4
    const v4, 0x12030001

    .line 641
    goto :goto_0

    .line 643
    :pswitch_5
    const v4, 0x12020001

    .line 644
    goto :goto_0

    .line 646
    :pswitch_6
    const v4, -0x6dfaffff

    .line 647
    goto :goto_0

    .line 649
    :pswitch_7
    const v4, 0x22040001

    .line 650
    goto :goto_0

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 635
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isStateActive:Z

    return v0
.end method

.method public isToolBarDisplay(I)Z
    .locals 3
    .parameter "toolbarMask"

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 298
    .local v0, bRet:Z
    sparse-switch p1, :sswitch_data_0

    .line 308
    const/4 v1, 0x0

    .line 309
    .local v1, toolbarMode:I
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->findCurModeMask(I)I

    move-result v1

    .line 310
    iget v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mDisplayToolBarCodeInfo:I

    and-int/2addr v2, v1

    if-ne v2, p1, :cond_0

    .line 311
    const/4 v0, 0x1

    .line 315
    .end local v1           #toolbarMode:I
    :cond_0
    :goto_0
    return v0

    .line 304
    :sswitch_0
    iget v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mDisplayToolBarCodeInfo:I

    and-int/2addr v2, p1

    if-lez v2, :cond_0

    .line 305
    const/4 v0, 0x1

    goto :goto_0

    .line 298
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0xf0 -> :sswitch_0
        0xf00 -> :sswitch_0
        0xf000 -> :sswitch_0
        0xf0000 -> :sswitch_0
    .end sparse-switch
.end method

.method public processKey(ILcom/samsung/inputmethod/SimeInputModeDef;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "newInputMode"

    .prologue
    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, bRet:Z
    if-ltz p1, :cond_0

    .line 743
    packed-switch p1, :pswitch_data_0

    .line 757
    :goto_0
    return v0

    .line 745
    :pswitch_0
    const/16 v1, -0x60

    invoke-direct {p0, v1, p2}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->processUserKey(ILcom/samsung/inputmethod/SimeInputModeDef;)Z

    move-result v0

    .line 747
    goto :goto_0

    .line 749
    :pswitch_1
    const/16 v1, -0x61

    invoke-direct {p0, v1, p2}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->processUserKey(ILcom/samsung/inputmethod/SimeInputModeDef;)Z

    move-result v0

    .line 750
    goto :goto_0

    .line 755
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->processUserKey(ILcom/samsung/inputmethod/SimeInputModeDef;)Z

    move-result v0

    goto :goto_0

    .line 743
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetToolBarEncodingInfo()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    .line 324
    const v0, 0x11111

    iput v0, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    .line 325
    iget v0, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolBarCodeInfo:I

    iput v0, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mDisplayToolBarCodeInfo:I

    .line 326
    return-void
.end method

.method public switchModeForShortcutKeyLongPressed()I
    .locals 2

    .prologue
    .line 1119
    new-instance v0, Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-direct {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;-><init>()V

    .line 1121
    .local v0, newInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    sparse-switch v1, :sswitch_data_0

    .line 1158
    :goto_0
    iget v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    return v1

    .line 1124
    :sswitch_0
    const/16 v1, -0x5b

    invoke-direct {p0, v1, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->processUserKey(ILcom/samsung/inputmethod/SimeInputModeDef;)Z

    goto :goto_0

    .line 1129
    :sswitch_1
    const/16 v1, -0x5d

    invoke-direct {p0, v1, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->processUserKey(ILcom/samsung/inputmethod/SimeInputModeDef;)Z

    goto :goto_0

    .line 1135
    :sswitch_2
    const/16 v1, -0x5c

    invoke-direct {p0, v1, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->processUserKey(ILcom/samsung/inputmethod/SimeInputModeDef;)Z

    goto :goto_0

    .line 1153
    :sswitch_3
    const/16 v1, -0x5e

    invoke-direct {p0, v1, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->processUserKey(ILcom/samsung/inputmethod/SimeInputModeDef;)Z

    goto :goto_0

    .line 1121
    nop

    :sswitch_data_0
    .sparse-switch
        0x12020001 -> :sswitch_0
        0x12030001 -> :sswitch_1
        0x12110001 -> :sswitch_2
        0x12210001 -> :sswitch_2
        0x12310001 -> :sswitch_2
        0x12430001 -> :sswitch_1
        0x32020001 -> :sswitch_0
        0x52200001 -> :sswitch_3
        0x62011001 -> :sswitch_3
        0x62012001 -> :sswitch_3
        0x62013001 -> :sswitch_3
        0x62014001 -> :sswitch_3
        0x62015001 -> :sswitch_3
        0x62016001 -> :sswitch_3
        0x62021001 -> :sswitch_3
        0x62022001 -> :sswitch_3
        0x62023001 -> :sswitch_3
        0x62024001 -> :sswitch_3
        0x62025001 -> :sswitch_3
        0x62026001 -> :sswitch_3
        0x72000001 -> :sswitch_3
    .end sparse-switch
.end method

.method public switchToSymbolInputToolbarMode()I
    .locals 3

    .prologue
    .line 1013
    const/4 v0, 0x0

    .line 1015
    .local v0, newInputMode:I
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isNumOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isPhone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1018
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->caseMask()I

    move-result v1

    const/high16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 1019
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mRecentLangToolBarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v0, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 1032
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1033
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iput v0, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 1034
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->encodeToolBarInfo(I)V

    .line 1037
    :cond_1
    return v0

    .line 1021
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mRecentLangToolBarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget-object v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v2, v2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    iput v2, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 1022
    const v0, 0x52200001

    goto :goto_0

    .line 1024
    :cond_3
    const/high16 v1, 0x6000

    iget-object v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeDef;->typeMask()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 1025
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mRecentLangToolBarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget-object v2, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v2, v2, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    iput v2, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 1026
    const v0, 0x62011001

    goto :goto_0

    .line 1029
    :cond_4
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mRecentLangToolBarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v0, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0
.end method

.method public symbolPageFlip(Z)Lcom/samsung/inputmethod/SimeInputModeDef;
    .locals 7
    .parameter "bForward"

    .prologue
    const v6, 0x62015001

    const v5, 0x62014001

    const v4, 0x62013001

    const v3, 0x62012001

    const v2, 0x62011001

    .line 1165
    new-instance v0, Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-direct {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;-><init>()V

    .line 1168
    .local v0, newInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->printInputMode(I)V

    .line 1169
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    sparse-switch v1, :sswitch_data_0

    .line 1212
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1213
    iget v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->printInputMode(I)V

    .line 1214
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v2, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    iput v2, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 1215
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->encodeToolBarInfo(I)V

    .line 1217
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->printInputMode(I)V

    .line 1218
    return-object v0

    .line 1171
    :sswitch_0
    const v1, 0x52200001

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1174
    :sswitch_1
    if-eqz p1, :cond_1

    .line 1175
    iput v3, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1177
    :cond_1
    const v1, 0x62016001

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1180
    :sswitch_2
    if-eqz p1, :cond_2

    .line 1181
    iput v4, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1183
    :cond_2
    iput v2, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1186
    :sswitch_3
    if-eqz p1, :cond_3

    .line 1187
    iput v5, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1189
    :cond_3
    iput v3, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1192
    :sswitch_4
    if-eqz p1, :cond_4

    .line 1193
    iput v6, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1195
    :cond_4
    iput v4, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1198
    :sswitch_5
    if-eqz p1, :cond_5

    .line 1199
    const v1, 0x62016001

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1201
    :cond_5
    iput v5, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1204
    :sswitch_6
    if-eqz p1, :cond_6

    .line 1205
    iput v2, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1207
    :cond_6
    iput v6, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1169
    :sswitch_data_0
    .sparse-switch
        0x52200000 -> :sswitch_0
        0x62011001 -> :sswitch_1
        0x62012001 -> :sswitch_2
        0x62013001 -> :sswitch_3
        0x62014001 -> :sswitch_4
        0x62015001 -> :sswitch_5
        0x62016001 -> :sswitch_6
    .end sparse-switch
.end method

.method public toggleToolBarMode()I
    .locals 4

    .prologue
    .line 1047
    const/4 v1, 0x0

    .line 1048
    .local v1, newInputMode:I
    const/4 v0, 0x0

    .line 1049
    .local v0, curToolbarMode:I
    const/4 v2, 0x0

    .line 1051
    .local v2, nextToolbarMode:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1054
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v3, v3, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->findCurToolbarMode(I)I

    move-result v0

    .line 1056
    if-nez v0, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return v1

    .line 1060
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->findNextValidToolbarMode(I)I

    move-result v2

    .line 1062
    if-eqz v2, :cond_0

    .line 1066
    sparse-switch v2, :sswitch_data_0

    .line 1108
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 1109
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iput v1, v3, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 1110
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mToolbarMode:Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v3, v3, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->encodeToolBarInfo(I)V

    goto :goto_0

    .line 1070
    :sswitch_0
    const/high16 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1071
    const v1, 0x12020001

    goto :goto_1

    .line 1073
    :cond_3
    const v1, 0x32020001

    .line 1074
    goto :goto_1

    .line 1078
    :sswitch_1
    const v1, 0x12030001

    .line 1079
    goto :goto_1

    .line 1083
    :sswitch_2
    const/16 v3, 0x100

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1084
    const v1, 0x12110001

    goto :goto_1

    .line 1085
    :cond_4
    const/16 v3, 0x200

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1086
    const v1, 0x12310001

    goto :goto_1

    .line 1087
    :cond_5
    const/16 v3, 0x300

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1088
    const v1, 0x12210001

    goto :goto_1

    .line 1092
    :sswitch_3
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1093
    const v1, 0x52000001

    goto :goto_1

    .line 1095
    :cond_6
    const v1, 0x72000001

    .line 1096
    goto :goto_1

    .line 1098
    :sswitch_4
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1099
    const v1, 0x52200001

    goto :goto_1

    .line 1101
    :cond_7
    const v1, 0x62011001

    .line 1102
    goto :goto_1

    .line 1066
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_4
        0xf0 -> :sswitch_3
        0xf00 -> :sswitch_2
        0xf000 -> :sswitch_1
        0xf0000 -> :sswitch_0
    .end sparse-switch
.end method
