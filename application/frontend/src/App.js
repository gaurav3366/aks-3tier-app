import React, { useState, useEffect, useCallback } from 'react';
import axios from 'axios';
import { Container, Typography, TextField, Button, List, ListItem } from '@mui/material';

function App() {
  const [items, setItems] = useState([]);
  const [newItem, setNewItem] = useState('');
  const backendUrl = process.env.REACT_APP_BACKEND_URL || 'http://localhost:8080';

  const fetchItems = useCallback(async () => {
    try {
      const response = await axios.get(`${backendUrl}/api/items`);
      setItems(response.data);
    } catch (error) {
      console.error('Error fetching items:', error);
    }
  }, [backendUrl]);

  useEffect(() => {
    fetchItems();
  }, [fetchItems]);

  const addItem = async () => {
    try {
      await axios.post(`${backendUrl}/api/items`, { name: newItem });
      setNewItem('');
      fetchItems();
    } catch (error) {
      console.error('Error adding item:', error);
    }
  };

  return (
    <Container maxWidth="sm">
      <Typography variant="h4" component="h1" gutterBottom>
        Item Management System
      </Typography>
      
      <div>
        <TextField
          value={newItem}
          onChange={(e) => setNewItem(e.target.value)}
          label="New Item"
          variant="outlined"
          fullWidth
          margin="normal"
        />
        <Button 
          variant="contained" 
          color="primary"
          onClick={addItem}
          fullWidth
        >
          Add Item
        </Button>
      </div>

      <List>
        {items.map((item) => (
          <ListItem key={item.id}>
            <Typography>{item.name}</Typography>
          </ListItem>
        ))}
      </List>
    </Container>
  );
}

export default App;
