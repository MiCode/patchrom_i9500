.class public Lcom/android/settings_ex/DreamSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DreamSettings$PackageReceiver;,
        Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DIALOG_WHEN_TO_DREAM:I = 0x1

.field private static final PACKAGE_SCHEME:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

.field private mBackend:Lcom/android/settings_ex/DreamBackend;

.field private mContext:Landroid/content/Context;

.field private mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

.field private final mPackageReceiver:Lcom/android/settings_ex/DreamSettings$PackageReceiver;

.field private mRefreshing:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/android/settings_ex/DreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/DreamSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 70
    new-instance v0, Lcom/android/settings_ex/DreamSettings$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/DreamSettings$PackageReceiver;-><init>(Lcom/android/settings_ex/DreamSettings;Lcom/android/settings_ex/DreamSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mPackageReceiver:Lcom/android/settings_ex/DreamSettings$PackageReceiver;

    .line 450
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DreamSettings;)Lcom/android/settings_ex/DreamBackend;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/DreamSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/DreamSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/settings_ex/DreamSettings;->mRefreshing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/DreamSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings_ex/DreamSettings;->refreshFromBackend()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/DreamSettings;)Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mAdapter:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 2
    .parameter "menu"
    .parameter "titleRes"
    .parameter "actionEnum"
    .parameter "isEnabled"
    .parameter "onClick"

    .prologue
    .line 241
    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 242
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 243
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 244
    new-instance v1, Lcom/android/settings_ex/DreamSettings$5;

    invoke-direct {v1, p0, p5}, Lcom/android/settings_ex/DreamSettings$5;-><init>(Lcom/android/settings_ex/DreamSettings;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 251
    return-object v0
.end method

.method private createWhenToDreamDialog()Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 263
    const/4 v6, 0x3

    new-array v3, v6, [Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f0904e6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f0904e5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f0904e4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 269
    .local v3, items:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings_ex/DreamBackend;->isActivatedOnDock()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings_ex/DreamBackend;->isActivatedOnSleep()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 274
    .local v2, initialSelection:I
    :goto_0
    const/4 v0, 0x0

    .line 275
    .local v0, alertDialog:Landroid/app/AlertDialog;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0904e9

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v6, Lcom/android/settings_ex/DreamSettings$6;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/DreamSettings$6;-><init>(Lcom/android/settings_ex/DreamSettings;)V

    invoke-virtual {v4, v3, v2, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 285
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 286
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 288
    return-object v0

    .line 269
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #initialSelection:I
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings_ex/DreamBackend;->isActivatedOnDock()Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v4}, Lcom/android/settings_ex/DreamBackend;->isActivatedOnSleep()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getSummaryResource(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 316
    new-instance v3, Lcom/android/settings_ex/DreamBackend;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 317
    .local v3, backend:Lcom/android/settings_ex/DreamBackend;
    invoke-virtual {v3}, Lcom/android/settings_ex/DreamBackend;->isEnabled()Z

    move-result v4

    .line 318
    .local v4, isEnabled:Z
    invoke-virtual {v3}, Lcom/android/settings_ex/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    .line 319
    .local v2, activatedOnSleep:Z
    invoke-virtual {v3}, Lcom/android/settings_ex/DreamBackend;->isActivatedOnDock()Z

    move-result v0

    .line 320
    .local v0, activatedOnDock:Z
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 321
    .local v1, activatedOnEither:Z
    :goto_0
    if-nez v4, :cond_2

    const v5, 0x7f0904e7

    :cond_0
    :goto_1
    return v5

    .end local v1           #activatedOnEither:Z
    :cond_1
    move v1, v5

    .line 320
    goto :goto_0

    .line 321
    .restart local v1       #activatedOnEither:Z
    :cond_2
    if-eqz v1, :cond_3

    const v5, 0x7f0904e3

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    const v5, 0x7f0904e5

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_0

    const v5, 0x7f0904e6

    goto :goto_1
.end method

.method public static getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"

    .prologue
    .line 329
    new-instance v0, Lcom/android/settings_ex/DreamBackend;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 330
    .local v0, backend:Lcom/android/settings_ex/DreamBackend;
    invoke-virtual {v0}, Lcom/android/settings_ex/DreamBackend;->isEnabled()Z

    move-result v1

    .line 331
    .local v1, isEnabled:Z
    if-nez v1, :cond_0

    .line 332
    const v2, 0x7f0904e7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 334
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_ex/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "msg"
    .parameter "args"

    .prologue
    .line 367
    return-void
.end method

.method private refreshFromBackend()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 339
    const-string v6, "refreshFromBackend()"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    iput-boolean v9, p0, Lcom/android/settings_ex/DreamSettings;->mRefreshing:Z

    .line 341
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings_ex/DreamBackend;->isEnabled()Z

    move-result v2

    .line 342
    .local v2, dreamsEnabled:Z
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    if-eq v6, v2, :cond_0

    .line 343
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 345
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mAdapter:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->clear()V

    .line 346
    if-eqz v2, :cond_1

    .line 347
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings_ex/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    .line 348
    .local v1, dreamInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/DreamBackend$DreamInfo;>;"
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mAdapter:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 350
    .end local v1           #dreamInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/DreamBackend$DreamInfo;>;"
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    if-eqz v6, :cond_3

    .line 351
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .local v0, arr$:[Landroid/view/MenuItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 352
    .local v5, menuItem:Landroid/view/MenuItem;
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 351
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 354
    .end local v5           #menuItem:Landroid/view/MenuItem;
    :cond_2
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 355
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    aget-object v7, v6, v8

    if-eqz v2, :cond_4

    const v6, 0x7f020192

    :goto_1
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 357
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    aget-object v7, v6, v9

    if-eqz v2, :cond_5

    const v6, 0x7f02018a

    :goto_2
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 361
    .end local v0           #arr$:[Landroid/view/MenuItem;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_3
    iput-boolean v8, p0, Lcom/android/settings_ex/DreamSettings;->mRefreshing:Z

    .line 362
    return-void

    .line 355
    .restart local v0       #arr$:[Landroid/view/MenuItem;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_4
    const v6, 0x7f020193

    goto :goto_1

    .line 357
    :cond_5
    const v6, 0x7f02018b

    goto :goto_2
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f090a1d

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 158
    const-string v2, "onActivityCreated(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 163
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    .local v0, emptyView:Landroid/widget/TextView;
    const v2, 0x7f0904e8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 166
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1030044

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 168
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 170
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 172
    new-instance v2, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;-><init>(Lcom/android/settings_ex/DreamSettings;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mAdapter:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    .line 173
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mAdapter:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    new-instance v2, Lcom/android/settings_ex/DreamSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/DreamSettings$2;-><init>(Lcom/android/settings_ex/DreamSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 187
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 86
    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 88
    iput-object p1, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/16 v5, 0x10

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 93
    const-string v2, "onCreate(%s)"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 97
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Lcom/android/settings_ex/DreamBackend;

    invoke-direct {v2, v0}, Lcom/android/settings_ex/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    .line 98
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mSwitch:Landroid/widget/Switch;

    .line 99
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/android/settings_ex/DreamSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DreamSettings$1;-><init>(Lcom/android/settings_ex/DreamSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 139
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 140
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 142
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/DreamSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 147
    invoke-virtual {p0, v7}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 148
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "dialogId"

    .prologue
    const/4 v4, 0x1

    .line 256
    const-string v0, "onCreateDialog(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    if-ne p1, v4, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/android/settings_ex/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 191
    const-string v0, "onCreateOptionsMenu()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settings_ex/DreamBackend;->isEnabled()Z

    move-result v4

    .line 196
    .local v4, isEnabled:Z
    const v2, 0x7f0904ea

    const/4 v3, 0x2

    new-instance v5, Lcom/android/settings_ex/DreamSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/DreamSettings$3;-><init>(Lcom/android/settings_ex/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v6

    .line 204
    .local v6, start:Landroid/view/MenuItem;
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 206
    if-eqz v4, :cond_2

    const v0, 0x7f020192

    :goto_0
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 211
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 219
    const v2, 0x7f0904e9

    const/4 v3, 0x1

    new-instance v5, Lcom/android/settings_ex/DreamSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/DreamSettings$4;-><init>(Lcom/android/settings_ex/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v7

    .line 229
    .local v7, whenToDream:Landroid/view/MenuItem;
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 231
    if-eqz v4, :cond_3

    const v0, 0x7f02018a

    :goto_1
    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 235
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/MenuItem;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    iput-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .line 237
    return-void

    .line 206
    .end local v7           #whenToDream:Landroid/view/MenuItem;
    :cond_2
    const v0, 0x7f020193

    goto :goto_0

    .line 231
    .restart local v7       #whenToDream:Landroid/view/MenuItem;
    :cond_3
    const v0, 0x7f02018b

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 153
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 154
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 294
    const-string v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/DreamSettings;->mPackageReceiver:Lcom/android/settings_ex/DreamSettings$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 297
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 301
    const-string v1, "onResume()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 303
    invoke-direct {p0}, Lcom/android/settings_ex/DreamSettings;->refreshFromBackend()V

    .line 306
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 307
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mPackageReceiver:Lcom/android/settings_ex/DreamSettings$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    return-void
.end method
