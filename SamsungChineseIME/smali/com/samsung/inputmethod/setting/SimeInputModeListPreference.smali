.class public Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;
.super Landroid/preference/DialogPreference;
.source "SimeInputModeListPreference.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeInputModeListPreference"


# instance fields
.field private adapter:Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;

.field listener:Landroid/content/DialogInterface$OnClickListener;

.field private mClickedDialogEntryIndex:I

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mSummaryEntryValues:[Ljava/lang/CharSequence;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;[I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "inputMode"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0, p1, p3}, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->initValues(Landroid/content/Context;[I)V

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getData()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v4

    .line 90
    .local v3, n:I
    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 91
    const/4 v1, 0x0

    .line 99
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    return-object v1

    .line 93
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 94
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "textView1"

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v0

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initValues(Landroid/content/Context;[I)V
    .locals 4
    .parameter "context"
    .parameter "inputMode"

    .prologue
    const v2, 0x7f060012

    const/4 v3, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 61
    aget v0, p2, v3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mSummaryEntryValues:[Ljava/lang/CharSequence;

    .line 72
    :goto_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->getData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mData:Ljava/util/List;

    .line 73
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mData:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->adapter:Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;

    .line 74
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->adapter:Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mSummaryEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->setmEntryValues([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 75
    aget v0, p2, v3

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLayoutId(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mClickedDialogEntryIndex:I

    .line 79
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mClickedDialogEntryIndex:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mClickedDialogEntryIndex:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 80
    iput v3, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mClickedDialogEntryIndex:I

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->adapter:Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;

    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mClickedDialogEntryIndex:I

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->setmCheckedIndex(I)V

    .line 83
    return-void

    .line 64
    :cond_1
    aget v0, p2, v3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mSummaryEntryValues:[Ljava/lang/CharSequence;

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mSummaryEntryValues:[Ljava/lang/CharSequence;

    goto :goto_0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public final getmClickedDialogEntryIndex()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mClickedDialogEntryIndex:I

    return v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 222
    if-eqz p1, :cond_0

    .line 226
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mClickedDialogEntryIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->adapter:Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;

    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mClickedDialogEntryIndex:I

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->setmCheckedIndex(I)V

    .line 229
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    const/4 v3, 0x0

    .line 233
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 235
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference$1;-><init>(Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->listener:Landroid/content/DialogInterface$OnClickListener;

    .line 245
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->adapter:Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;

    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mClickedDialogEntryIndex:I

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    const/high16 v0, 0x104

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 248
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mValue:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mClickedDialogEntryIndex:I

    .line 110
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->persistString(Ljava/lang/String;)Z

    .line 111
    return-void
.end method

.method public final setmClickedDialogEntryIndex(I)V
    .locals 0
    .parameter "mClickedDialogEntryIndex"

    .prologue
    .line 257
    iput p1, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mClickedDialogEntryIndex:I

    .line 258
    return-void
.end method
