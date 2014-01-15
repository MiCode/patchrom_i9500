.class public Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;
.super Landroid/app/Activity;
.source "WifiHiddenApListActivity.java"


# static fields
.field private static final MENU_ID_ADD:I = 0x1

.field private static final MENU_ID_REMOVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WifiHiddenApListActivity"


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialogConfigure:Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;

.field private mEmptyLandscape:Landroid/view/View;

.field private mEmptyPortrait:Landroid/view/View;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mRemoveMenu:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mList:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity$1;-><init>(Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;)Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->saveFile()V

    return-void
.end method

.method private addListItems()V
    .locals 6

    .prologue
    .line 189
    const-string v4, "/data/misc/wifi/hiddenAPs.txt"

    .line 191
    .local v4, path:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    .line 192
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 212
    :goto_0
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    .line 199
    .local v0, accessPoint:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .local v3, in:Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 207
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 209
    .end local v3           #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 210
    .local v1, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 207
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private saveFile()V
    .locals 5

    .prologue
    .line 216
    :try_start_0
    const-string v3, "/data/misc/wifi/hiddenAPs.txt"

    .line 218
    .local v3, path:Ljava/lang/String;
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .local v1, fw:Ljava/io/FileWriter;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 223
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 224
    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 232
    return-void

    .line 227
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 229
    .end local v1           #fw:Ljava/io/FileWriter;
    .end local v2           #i:I
    .end local v3           #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private updateEmptyView(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 147
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 100
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->updateEmptyView(I)V

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v2, 0x7f040176

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 55
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 58
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 59
    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 64
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    const v2, 0x7f0b0363

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mListView:Landroid/widget/ListView;

    .line 66
    const v2, 0x1020004

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 67
    .local v1, emptyView:Landroid/widget/FrameLayout;
    const v2, 0x7f0b0408

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mEmptyPortrait:Landroid/view/View;

    .line 68
    const v2, 0x7f0b040c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mEmptyLandscape:Landroid/view/View;

    .line 70
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 71
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 72
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->updateEmptyView(I)V

    .line 76
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 109
    const v0, 0x7f090f81

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200c7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 114
    const/4 v0, 0x2

    const v1, 0x7f090f83

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mRemoveMenu:Landroid/view/MenuItem;

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mRemoveMenu:Landroid/view/MenuItem;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->updateMenu()V

    .line 118
    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 95
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 96
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 125
    :sswitch_0
    new-instance v2, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;

    .line 126
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;

    const v3, 0x7f0902d8

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 127
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->show()V

    goto :goto_0

    .line 131
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 136
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 123
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->addListItems()V

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->updateMenu()V

    .line 87
    return-void
.end method

.method public updateMenu()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mRemoveMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mRemoveMenu:Landroid/view/MenuItem;

    const v1, 0x7f0200e8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mRemoveMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mRemoveMenu:Landroid/view/MenuItem;

    const v1, 0x7f0200e9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApListActivity;->mRemoveMenu:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
