.class Lcom/android/settings_ex/homesync/BackupListActivity$ListItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BackupListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/homesync/BackupListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings_ex/homesync/BackupListActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/homesync/BackupListActivity;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;>;"
    iput-object p1, p0, Lcom/android/settings_ex/homesync/BackupListActivity$ListItemAdapter;->this$0:Lcom/android/settings_ex/homesync/BackupListActivity;

    .line 89
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 90
    iput-object p4, p0, Lcom/android/settings_ex/homesync/BackupListActivity$ListItemAdapter;->items:Ljava/util/ArrayList;

    .line 91
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 94
    move-object v3, p2

    .line 95
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 97
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f040015

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 99
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/homesync/BackupListActivity$ListItemAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;

    .line 100
    .local v1, p:Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;
    if-eqz v1, :cond_2

    .line 102
    const v5, 0x7f0b003a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    .local v0, dt:Landroid/widget/TextView;
    const v5, 0x7f0b003b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 104
    .local v2, st:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v1}, Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_1
    if-eqz v2, :cond_2

    .line 108
    invoke-virtual {v1}, Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;->getSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .end local v0           #dt:Landroid/widget/TextView;
    .end local v2           #st:Landroid/widget/TextView;
    :cond_2
    return-object v3
.end method
