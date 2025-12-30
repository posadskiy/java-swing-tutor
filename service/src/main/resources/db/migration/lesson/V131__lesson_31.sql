-- Flyway migration V131: Lesson 31 tasks
-- Extracted from V32__lesson_31_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (253,
        31,
        1,
        'DefaultMutableTreeNode-add,add;DefaultMutableTreeNode',
        '',
        253,
        22.0,
        0.0,
        'DefaultMutableTreeNode root = new DefaultMutableTreeNode("Root");
DefaultMutableTreeNode child1 = new DefaultMutableTreeNode("Child 1");
DefaultMutableTreeNode child2 = new DefaultMutableTreeNode("Child 2");
root.add(child1);
root.add(child2);
JTree tree = new JTree(root);
JScrollPane scrollPane = new JScrollPane(tree);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (254,
        31,
        2,
        'JTable-getColumnModel,add',
        '',
        254,
        27.0,
        0.0,
        'String[] columns = {"Name", "Age"};
String[][] data = {{"John", "25"}, {"Mary", "30"}};
JTable table = new JTable(data, columns);
TableColumnModel columnModel = table.getColumnModel();
TableColumn column = columnModel.getColumn(0);
column.setPreferredWidth(150);
JScrollPane scrollPane = new JScrollPane(table);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (255,
        31,
        3,
        'JTree-expandPath,add',
        '',
        255,
        26.0,
        0.0,
        'DefaultMutableTreeNode root = new DefaultMutableTreeNode("Root");
DefaultMutableTreeNode node = new DefaultMutableTreeNode("Node");
root.add(node);
JTree tree = new JTree(root);
TreePath path = new TreePath(node.getPath());
tree.expandPath(path);
JScrollPane scrollPane = new JScrollPane(tree);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (256,
        31,
        4,
        'JTable-add',
        '',
        256,
        28.0,
        0.0,
        'String[] columns = {"Name", "Age"};
String[][] data = {{"John", "25"}, {"Mary", "30"}};
DefaultTableModel model = new DefaultTableModel(data, columns) {
    @Override
    public boolean isCellEditable(int row, int column) {
        return true;
    }
};
JTable table = new JTable(model);
JScrollPane scrollPane = new JScrollPane(table);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (257,
        31,
        5,
        'JTree-addTreeSelectionListener,add',
        '',
        257,
        27.0,
        0.0,
        'DefaultMutableTreeNode root = new DefaultMutableTreeNode("Root");
JTree tree = new JTree(root);
JLabel label = new JLabel();
tree.addTreeSelectionListener(e -> {
    TreePath path = e.getNewLeadSelectionPath();
    if (path != null) {
        DefaultMutableTreeNode node = (DefaultMutableTreeNode) path.getLastPathComponent();
        label.setText("Selected: " + node.getUserObject());
    }
});
JScrollPane scrollPane = new JScrollPane(tree);
add(scrollPane);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (258,
        31,
        6,
        'JTable-getSelectionModel,setSelectionMode,add',
        '',
        258,
        25.0,
        0.0,
        'String[] columns = {"Name", "Age"};
String[][] data = {{"John", "25"}, {"Mary", "30"}};
JTable table = new JTable(data, columns);
ListSelectionModel selectionModel = table.getSelectionModel();
selectionModel.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);
JScrollPane scrollPane = new JScrollPane(table);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (259,
        31,
        8,
        'JTree-setCellRenderer,add',
        '',
        259,
        28.0,
        0.0,
        'DefaultMutableTreeNode root = new DefaultMutableTreeNode("Root");
JTree tree = new JTree(root);
tree.setCellRenderer(new DefaultTreeCellRenderer() {
    @Override
    public Component getTreeCellRendererComponent(JTree tree, Object value, boolean selected, boolean expanded, boolean leaf, int row, boolean hasFocus) {
        Component c = super.getTreeCellRendererComponent(tree, value, selected, expanded, leaf, row, hasFocus);
        c.setForeground(Color.BLUE);
        return c;
    }
});
JScrollPane scrollPane = new JScrollPane(tree);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (266,
        31,
        8,
        'JMenuItem-setAccelerator,add',
        '',
        266,
        25.0,
        0.0,
        'JMenuItem menuItem = new JMenuItem("Save");
KeyStroke keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_S, InputEvent.CTRL_DOWN_MASK);
menuItem.setAccelerator(keyStroke);
JMenu fileMenu = new JMenu("File");
fileMenu.add(menuItem);
JMenuBar menuBar = new JMenuBar();
menuBar.add(fileMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (260,
        31,
        9,
        'JTable-getColumnModel,setPreferredWidth,add',
        '',
        260,
        26.0,
        0.0,
        'String[] columns = {"Name", "Age"};
String[][] data = {{"John", "25"}, {"Mary", "30"}};
JTable table = new JTable(data, columns);
TableColumnModel columnModel = table.getColumnModel();
TableColumn column = columnModel.getColumn(0);
column.setPreferredWidth(150);
JScrollPane scrollPane = new JScrollPane(table);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (267,
        31,
        9,
        'JMenuItem-setMnemonic,add',
        '',
        267,
        23.0,
        0.0,
        'JMenuItem menuItem = new JMenuItem("Save");
menuItem.setMnemonic(KeyEvent.VK_S);
JMenu fileMenu = new JMenu("File");
fileMenu.add(menuItem);
JMenuBar menuBar = new JMenuBar();
menuBar.add(fileMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (262,
        31,
        10,
        'JTable-setRowHeight',
        '',
        262,
        22.0,
        0.0,
        'String[] columns = {"Name", "Age"};
String[][] data = {{"John", "25"}, {"Mary", "30"}};
JTable table = new JTable(data, columns);
table.setRowHeight(30);
JScrollPane scrollPane = new JScrollPane(table);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (268,
        31,
        10,
        'JMenuItem-setToolTipText',
        '',
        268,
        21.0,
        0.0,
        'JMenuItem menuItem = new JMenuItem("Save");
menuItem.setToolTipText("Save document");
JMenu fileMenu = new JMenu("File");
fileMenu.add(menuItem);
JMenuBar menuBar = new JMenuBar();
menuBar.add(fileMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (261,
        31,
        11,
        'JTree-getPathForRow,expandPath,add',
        '',
        261,
        25.0,
        0.0,
        'DefaultMutableTreeNode root = new DefaultMutableTreeNode("Root");
JTree tree = new JTree(root);
TreePath path = tree.getPathForRow(0);
tree.expandPath(path);
JScrollPane scrollPane = new JScrollPane(tree);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (264,
        31,
        11,
        'JTable-setAutoResizeMode',
        '',
        264,
        24.0,
        0.0,
        'String[] columns = {"Name", "Age"};
String[][] data = {{"John", "25"}, {"Mary", "30"}};
JTable table = new JTable(data, columns);
table.setAutoResizeMode(JTable.AUTO_RESIZE_ALL_COLUMNS);
JScrollPane scrollPane = new JScrollPane(table);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (263,
        31,
        13,
        'JTree-getPathForRow,collapsePath,add',
        '',
        263,
        24.0,
        0.0,
        'DefaultMutableTreeNode root = new DefaultMutableTreeNode("Root");
JTree tree = new JTree(root);
TreePath path = tree.getPathForRow(0);
tree.collapsePath(path);
JScrollPane scrollPane = new JScrollPane(tree);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (265,
        31,
        14,
        'JTree-setRootVisible',
        '',
        265,
        22.0,
        0.0,
        'DefaultMutableTreeNode root = new DefaultMutableTreeNode("Root");
JTree tree = new JTree(root);
tree.setRootVisible(true);
JScrollPane scrollPane = new JScrollPane(tree);
add(scrollPane);');

