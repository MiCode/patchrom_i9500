.class public Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;
.super Landroid/preference/DialogPreference;
.source "SimeColorPickerPreference.java"


# instance fields
.field private adapter:Lcom/samsung/inputmethod/setting/SimeCustListAdapter;

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

.field private mEntryValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mClickedDialogEntryIndex:I

    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->initValues(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mClickedDialogEntryIndex:I

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->initValues(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mClickedDialogEntryIndex:I

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
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 63
    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v4

    .line 64
    .local v3, n:I
    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 65
    const/4 v1, 0x0

    .line 73
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    return-object v1

    .line 67
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 68
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "textView1"

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v0

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initValues(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->getData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mData:Ljava/util/List;

    .line 48
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mData:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->adapter:Lcom/samsung/inputmethod/setting/SimeCustListAdapter;

    .line 49
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->adapter:Lcom/samsung/inputmethod/setting/SimeCustListAdapter;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->setmEntryValues([Ljava/lang/CharSequence;)V

    .line 50
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLineColorIndex()I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mClickedDialogEntryIndex:I

    .line 51
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mClickedDialogEntryIndex:I

    if-gez v0, :cond_0

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mClickedDialogEntryIndex:I

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->adapter:Lcom/samsung/inputmethod/setting/SimeCustListAdapter;

    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mClickedDialogEntryIndex:I

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->setmCheckedIndex(I)V

    .line 56
    return-void
.end method


# virtual methods
.method public final getmClickedDialogEntryIndex()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mClickedDialogEntryIndex:I

    return v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mClickedDialogEntryIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->adapter:Lcom/samsung/inputmethod/setting/SimeCustListAdapter;

    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mClickedDialogEntryIndex:I

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->setmCheckedIndex(I)V

    .line 83
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 90
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference$1;-><init>(Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->listener:Landroid/content/DialogInterface$OnClickListener;

    .line 100
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->adapter:Lcom/samsung/inputmethod/setting/SimeCustListAdapter;

    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mClickedDialogEntryIndex:I

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    const/high16 v0, 0x104

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    return-void
.end method

.method public final setmClickedDialogEntryIndex(I)V
    .locals 0
    .parameter "mClickedDialogEntryIndex"

    .prologue
    .line 113
    iput p1, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mClickedDialogEntryIndex:I

    .line 114
    return-void
.end method
