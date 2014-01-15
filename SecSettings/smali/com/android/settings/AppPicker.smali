.class public Lcom/android/settings_ex/AppPicker;
.super Landroid/app/ListActivity;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/AppPicker$AppListAdapter;,
        Lcom/android/settings_ex/AppPicker$MyApplicationInfo;
    }
.end annotation


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/AppPicker$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/settings_ex/AppPicker$AppListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/android/settings_ex/AppPicker$1;

    invoke-direct {v0}, Lcom/android/settings_ex/AppPicker$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 82
    return-void
.end method

.method static synthetic access$000()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/settings_ex/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    new-instance v0, Lcom/android/settings_ex/AppPicker$AppListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/settings_ex/AppPicker$AppListAdapter;-><init>(Lcom/android/settings_ex/AppPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/AppPicker;->mAdapter:Lcom/android/settings_ex/AppPicker$AppListAdapter;

    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/AppPicker;->mAdapter:Lcom/android/settings_ex/AppPicker$AppListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/AppPicker;->mAdapter:Lcom/android/settings_ex/AppPicker$AppListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 70
    iget-object v2, p0, Lcom/android/settings_ex/AppPicker;->mAdapter:Lcom/android/settings_ex/AppPicker$AppListAdapter;

    invoke-virtual {v2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/AppPicker$MyApplicationInfo;

    .line 71
    .local v0, app:Lcom/android/settings_ex/AppPicker$MyApplicationInfo;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, v0, Lcom/android/settings_ex/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings_ex/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 61
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 66
    return-void
.end method
